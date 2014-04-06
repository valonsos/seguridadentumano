package com.guendabiaani.domain.setm



import org.junit.*
import grails.test.mixin.*

@TestFor(DenunciaController)
@Mock(Denuncia)
class DenunciaControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/denuncia/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.denunciaInstanceList.size() == 0
        assert model.denunciaInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.denunciaInstance != null
    }

    void testSave() {
        controller.save()

        assert model.denunciaInstance != null
        assert view == '/denuncia/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/denuncia/show/1'
        assert controller.flash.message != null
        assert Denuncia.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/denuncia/list'

        populateValidParams(params)
        def denuncia = new Denuncia(params)

        assert denuncia.save() != null

        params.id = denuncia.id

        def model = controller.show()

        assert model.denunciaInstance == denuncia
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/denuncia/list'

        populateValidParams(params)
        def denuncia = new Denuncia(params)

        assert denuncia.save() != null

        params.id = denuncia.id

        def model = controller.edit()

        assert model.denunciaInstance == denuncia
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/denuncia/list'

        response.reset()

        populateValidParams(params)
        def denuncia = new Denuncia(params)

        assert denuncia.save() != null

        // test invalid parameters in update
        params.id = denuncia.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/denuncia/edit"
        assert model.denunciaInstance != null

        denuncia.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/denuncia/show/$denuncia.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        denuncia.clearErrors()

        populateValidParams(params)
        params.id = denuncia.id
        params.version = -1
        controller.update()

        assert view == "/denuncia/edit"
        assert model.denunciaInstance != null
        assert model.denunciaInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/denuncia/list'

        response.reset()

        populateValidParams(params)
        def denuncia = new Denuncia(params)

        assert denuncia.save() != null
        assert Denuncia.count() == 1

        params.id = denuncia.id

        controller.delete()

        assert Denuncia.count() == 0
        assert Denuncia.get(denuncia.id) == null
        assert response.redirectedUrl == '/denuncia/list'
    }
}
