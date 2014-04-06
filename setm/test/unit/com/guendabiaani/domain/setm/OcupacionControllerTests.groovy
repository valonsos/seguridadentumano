package com.guendabiaani.domain.setm



import org.junit.*
import grails.test.mixin.*

@TestFor(OcupacionController)
@Mock(Ocupacion)
class OcupacionControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/ocupacion/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.ocupacionInstanceList.size() == 0
        assert model.ocupacionInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.ocupacionInstance != null
    }

    void testSave() {
        controller.save()

        assert model.ocupacionInstance != null
        assert view == '/ocupacion/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/ocupacion/show/1'
        assert controller.flash.message != null
        assert Ocupacion.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/ocupacion/list'

        populateValidParams(params)
        def ocupacion = new Ocupacion(params)

        assert ocupacion.save() != null

        params.id = ocupacion.id

        def model = controller.show()

        assert model.ocupacionInstance == ocupacion
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/ocupacion/list'

        populateValidParams(params)
        def ocupacion = new Ocupacion(params)

        assert ocupacion.save() != null

        params.id = ocupacion.id

        def model = controller.edit()

        assert model.ocupacionInstance == ocupacion
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/ocupacion/list'

        response.reset()

        populateValidParams(params)
        def ocupacion = new Ocupacion(params)

        assert ocupacion.save() != null

        // test invalid parameters in update
        params.id = ocupacion.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/ocupacion/edit"
        assert model.ocupacionInstance != null

        ocupacion.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/ocupacion/show/$ocupacion.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        ocupacion.clearErrors()

        populateValidParams(params)
        params.id = ocupacion.id
        params.version = -1
        controller.update()

        assert view == "/ocupacion/edit"
        assert model.ocupacionInstance != null
        assert model.ocupacionInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/ocupacion/list'

        response.reset()

        populateValidParams(params)
        def ocupacion = new Ocupacion(params)

        assert ocupacion.save() != null
        assert Ocupacion.count() == 1

        params.id = ocupacion.id

        controller.delete()

        assert Ocupacion.count() == 0
        assert Ocupacion.get(ocupacion.id) == null
        assert response.redirectedUrl == '/ocupacion/list'
    }
}
