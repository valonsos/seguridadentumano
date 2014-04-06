package com.guendabiaani.domain.setm



import org.junit.*
import grails.test.mixin.*

@TestFor(RutaController)
@Mock(Ruta)
class RutaControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/ruta/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.rutaInstanceList.size() == 0
        assert model.rutaInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.rutaInstance != null
    }

    void testSave() {
        controller.save()

        assert model.rutaInstance != null
        assert view == '/ruta/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/ruta/show/1'
        assert controller.flash.message != null
        assert Ruta.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/ruta/list'

        populateValidParams(params)
        def ruta = new Ruta(params)

        assert ruta.save() != null

        params.id = ruta.id

        def model = controller.show()

        assert model.rutaInstance == ruta
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/ruta/list'

        populateValidParams(params)
        def ruta = new Ruta(params)

        assert ruta.save() != null

        params.id = ruta.id

        def model = controller.edit()

        assert model.rutaInstance == ruta
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/ruta/list'

        response.reset()

        populateValidParams(params)
        def ruta = new Ruta(params)

        assert ruta.save() != null

        // test invalid parameters in update
        params.id = ruta.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/ruta/edit"
        assert model.rutaInstance != null

        ruta.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/ruta/show/$ruta.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        ruta.clearErrors()

        populateValidParams(params)
        params.id = ruta.id
        params.version = -1
        controller.update()

        assert view == "/ruta/edit"
        assert model.rutaInstance != null
        assert model.rutaInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/ruta/list'

        response.reset()

        populateValidParams(params)
        def ruta = new Ruta(params)

        assert ruta.save() != null
        assert Ruta.count() == 1

        params.id = ruta.id

        controller.delete()

        assert Ruta.count() == 0
        assert Ruta.get(ruta.id) == null
        assert response.redirectedUrl == '/ruta/list'
    }
}
