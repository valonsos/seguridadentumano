package com.guendabiaani.domain.setm



import org.junit.*
import grails.test.mixin.*

@TestFor(AdiccionesController)
@Mock(Adicciones)
class AdiccionesControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/adicciones/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.adiccionesInstanceList.size() == 0
        assert model.adiccionesInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.adiccionesInstance != null
    }

    void testSave() {
        controller.save()

        assert model.adiccionesInstance != null
        assert view == '/adicciones/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/adicciones/show/1'
        assert controller.flash.message != null
        assert Adicciones.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/adicciones/list'

        populateValidParams(params)
        def adicciones = new Adicciones(params)

        assert adicciones.save() != null

        params.id = adicciones.id

        def model = controller.show()

        assert model.adiccionesInstance == adicciones
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/adicciones/list'

        populateValidParams(params)
        def adicciones = new Adicciones(params)

        assert adicciones.save() != null

        params.id = adicciones.id

        def model = controller.edit()

        assert model.adiccionesInstance == adicciones
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/adicciones/list'

        response.reset()

        populateValidParams(params)
        def adicciones = new Adicciones(params)

        assert adicciones.save() != null

        // test invalid parameters in update
        params.id = adicciones.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/adicciones/edit"
        assert model.adiccionesInstance != null

        adicciones.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/adicciones/show/$adicciones.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        adicciones.clearErrors()

        populateValidParams(params)
        params.id = adicciones.id
        params.version = -1
        controller.update()

        assert view == "/adicciones/edit"
        assert model.adiccionesInstance != null
        assert model.adiccionesInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/adicciones/list'

        response.reset()

        populateValidParams(params)
        def adicciones = new Adicciones(params)

        assert adicciones.save() != null
        assert Adicciones.count() == 1

        params.id = adicciones.id

        controller.delete()

        assert Adicciones.count() == 0
        assert Adicciones.get(adicciones.id) == null
        assert response.redirectedUrl == '/adicciones/list'
    }
}
