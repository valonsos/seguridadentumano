package com.guendabiaani.domain.setm



import org.junit.*
import grails.test.mixin.*

@TestFor(CoordenadaController)
@Mock(Coordenada)
class CoordenadaControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/coordenada/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.coordenadaInstanceList.size() == 0
        assert model.coordenadaInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.coordenadaInstance != null
    }

    void testSave() {
        controller.save()

        assert model.coordenadaInstance != null
        assert view == '/coordenada/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/coordenada/show/1'
        assert controller.flash.message != null
        assert Coordenada.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/coordenada/list'

        populateValidParams(params)
        def coordenada = new Coordenada(params)

        assert coordenada.save() != null

        params.id = coordenada.id

        def model = controller.show()

        assert model.coordenadaInstance == coordenada
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/coordenada/list'

        populateValidParams(params)
        def coordenada = new Coordenada(params)

        assert coordenada.save() != null

        params.id = coordenada.id

        def model = controller.edit()

        assert model.coordenadaInstance == coordenada
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/coordenada/list'

        response.reset()

        populateValidParams(params)
        def coordenada = new Coordenada(params)

        assert coordenada.save() != null

        // test invalid parameters in update
        params.id = coordenada.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/coordenada/edit"
        assert model.coordenadaInstance != null

        coordenada.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/coordenada/show/$coordenada.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        coordenada.clearErrors()

        populateValidParams(params)
        params.id = coordenada.id
        params.version = -1
        controller.update()

        assert view == "/coordenada/edit"
        assert model.coordenadaInstance != null
        assert model.coordenadaInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/coordenada/list'

        response.reset()

        populateValidParams(params)
        def coordenada = new Coordenada(params)

        assert coordenada.save() != null
        assert Coordenada.count() == 1

        params.id = coordenada.id

        controller.delete()

        assert Coordenada.count() == 0
        assert Coordenada.get(coordenada.id) == null
        assert response.redirectedUrl == '/coordenada/list'
    }
}
