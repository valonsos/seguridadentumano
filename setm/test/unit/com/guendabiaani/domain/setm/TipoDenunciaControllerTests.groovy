package com.guendabiaani.domain.setm



import org.junit.*
import grails.test.mixin.*

@TestFor(TipoDenunciaController)
@Mock(TipoDenuncia)
class TipoDenunciaControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/tipoDenuncia/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.tipoDenunciaInstanceList.size() == 0
        assert model.tipoDenunciaInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.tipoDenunciaInstance != null
    }

    void testSave() {
        controller.save()

        assert model.tipoDenunciaInstance != null
        assert view == '/tipoDenuncia/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/tipoDenuncia/show/1'
        assert controller.flash.message != null
        assert TipoDenuncia.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/tipoDenuncia/list'

        populateValidParams(params)
        def tipoDenuncia = new TipoDenuncia(params)

        assert tipoDenuncia.save() != null

        params.id = tipoDenuncia.id

        def model = controller.show()

        assert model.tipoDenunciaInstance == tipoDenuncia
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/tipoDenuncia/list'

        populateValidParams(params)
        def tipoDenuncia = new TipoDenuncia(params)

        assert tipoDenuncia.save() != null

        params.id = tipoDenuncia.id

        def model = controller.edit()

        assert model.tipoDenunciaInstance == tipoDenuncia
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/tipoDenuncia/list'

        response.reset()

        populateValidParams(params)
        def tipoDenuncia = new TipoDenuncia(params)

        assert tipoDenuncia.save() != null

        // test invalid parameters in update
        params.id = tipoDenuncia.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/tipoDenuncia/edit"
        assert model.tipoDenunciaInstance != null

        tipoDenuncia.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/tipoDenuncia/show/$tipoDenuncia.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        tipoDenuncia.clearErrors()

        populateValidParams(params)
        params.id = tipoDenuncia.id
        params.version = -1
        controller.update()

        assert view == "/tipoDenuncia/edit"
        assert model.tipoDenunciaInstance != null
        assert model.tipoDenunciaInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/tipoDenuncia/list'

        response.reset()

        populateValidParams(params)
        def tipoDenuncia = new TipoDenuncia(params)

        assert tipoDenuncia.save() != null
        assert TipoDenuncia.count() == 1

        params.id = tipoDenuncia.id

        controller.delete()

        assert TipoDenuncia.count() == 0
        assert TipoDenuncia.get(tipoDenuncia.id) == null
        assert response.redirectedUrl == '/tipoDenuncia/list'
    }
}
