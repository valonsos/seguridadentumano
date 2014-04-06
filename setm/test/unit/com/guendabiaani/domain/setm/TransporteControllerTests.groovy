package com.guendabiaani.domain.setm



import org.junit.*
import grails.test.mixin.*

@TestFor(TransporteController)
@Mock(Transporte)
class TransporteControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/transporte/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.transporteInstanceList.size() == 0
        assert model.transporteInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.transporteInstance != null
    }

    void testSave() {
        controller.save()

        assert model.transporteInstance != null
        assert view == '/transporte/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/transporte/show/1'
        assert controller.flash.message != null
        assert Transporte.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/transporte/list'

        populateValidParams(params)
        def transporte = new Transporte(params)

        assert transporte.save() != null

        params.id = transporte.id

        def model = controller.show()

        assert model.transporteInstance == transporte
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/transporte/list'

        populateValidParams(params)
        def transporte = new Transporte(params)

        assert transporte.save() != null

        params.id = transporte.id

        def model = controller.edit()

        assert model.transporteInstance == transporte
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/transporte/list'

        response.reset()

        populateValidParams(params)
        def transporte = new Transporte(params)

        assert transporte.save() != null

        // test invalid parameters in update
        params.id = transporte.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/transporte/edit"
        assert model.transporteInstance != null

        transporte.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/transporte/show/$transporte.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        transporte.clearErrors()

        populateValidParams(params)
        params.id = transporte.id
        params.version = -1
        controller.update()

        assert view == "/transporte/edit"
        assert model.transporteInstance != null
        assert model.transporteInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/transporte/list'

        response.reset()

        populateValidParams(params)
        def transporte = new Transporte(params)

        assert transporte.save() != null
        assert Transporte.count() == 1

        params.id = transporte.id

        controller.delete()

        assert Transporte.count() == 0
        assert Transporte.get(transporte.id) == null
        assert response.redirectedUrl == '/transporte/list'
    }
}
