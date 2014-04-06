package com.guendabiaani.domain.setm



import org.junit.*
import grails.test.mixin.*

@TestFor(EjemploController)
@Mock(Ejemplo)
class EjemploControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/ejemplo/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.ejemploInstanceList.size() == 0
        assert model.ejemploInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.ejemploInstance != null
    }

    void testSave() {
        controller.save()

        assert model.ejemploInstance != null
        assert view == '/ejemplo/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/ejemplo/show/1'
        assert controller.flash.message != null
        assert Ejemplo.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/ejemplo/list'

        populateValidParams(params)
        def ejemplo = new Ejemplo(params)

        assert ejemplo.save() != null

        params.id = ejemplo.id

        def model = controller.show()

        assert model.ejemploInstance == ejemplo
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/ejemplo/list'

        populateValidParams(params)
        def ejemplo = new Ejemplo(params)

        assert ejemplo.save() != null

        params.id = ejemplo.id

        def model = controller.edit()

        assert model.ejemploInstance == ejemplo
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/ejemplo/list'

        response.reset()

        populateValidParams(params)
        def ejemplo = new Ejemplo(params)

        assert ejemplo.save() != null

        // test invalid parameters in update
        params.id = ejemplo.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/ejemplo/edit"
        assert model.ejemploInstance != null

        ejemplo.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/ejemplo/show/$ejemplo.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        ejemplo.clearErrors()

        populateValidParams(params)
        params.id = ejemplo.id
        params.version = -1
        controller.update()

        assert view == "/ejemplo/edit"
        assert model.ejemploInstance != null
        assert model.ejemploInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/ejemplo/list'

        response.reset()

        populateValidParams(params)
        def ejemplo = new Ejemplo(params)

        assert ejemplo.save() != null
        assert Ejemplo.count() == 1

        params.id = ejemplo.id

        controller.delete()

        assert Ejemplo.count() == 0
        assert Ejemplo.get(ejemplo.id) == null
        assert response.redirectedUrl == '/ejemplo/list'
    }
}
