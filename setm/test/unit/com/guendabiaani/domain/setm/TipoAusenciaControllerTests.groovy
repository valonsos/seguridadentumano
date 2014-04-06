package com.guendabiaani.domain.setm



import org.junit.*
import grails.test.mixin.*

@TestFor(TipoAusenciaController)
@Mock(TipoAusencia)
class TipoAusenciaControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/tipoAusencia/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.tipoAusenciaInstanceList.size() == 0
        assert model.tipoAusenciaInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.tipoAusenciaInstance != null
    }

    void testSave() {
        controller.save()

        assert model.tipoAusenciaInstance != null
        assert view == '/tipoAusencia/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/tipoAusencia/show/1'
        assert controller.flash.message != null
        assert TipoAusencia.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/tipoAusencia/list'

        populateValidParams(params)
        def tipoAusencia = new TipoAusencia(params)

        assert tipoAusencia.save() != null

        params.id = tipoAusencia.id

        def model = controller.show()

        assert model.tipoAusenciaInstance == tipoAusencia
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/tipoAusencia/list'

        populateValidParams(params)
        def tipoAusencia = new TipoAusencia(params)

        assert tipoAusencia.save() != null

        params.id = tipoAusencia.id

        def model = controller.edit()

        assert model.tipoAusenciaInstance == tipoAusencia
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/tipoAusencia/list'

        response.reset()

        populateValidParams(params)
        def tipoAusencia = new TipoAusencia(params)

        assert tipoAusencia.save() != null

        // test invalid parameters in update
        params.id = tipoAusencia.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/tipoAusencia/edit"
        assert model.tipoAusenciaInstance != null

        tipoAusencia.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/tipoAusencia/show/$tipoAusencia.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        tipoAusencia.clearErrors()

        populateValidParams(params)
        params.id = tipoAusencia.id
        params.version = -1
        controller.update()

        assert view == "/tipoAusencia/edit"
        assert model.tipoAusenciaInstance != null
        assert model.tipoAusenciaInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/tipoAusencia/list'

        response.reset()

        populateValidParams(params)
        def tipoAusencia = new TipoAusencia(params)

        assert tipoAusencia.save() != null
        assert TipoAusencia.count() == 1

        params.id = tipoAusencia.id

        controller.delete()

        assert TipoAusencia.count() == 0
        assert TipoAusencia.get(tipoAusencia.id) == null
        assert response.redirectedUrl == '/tipoAusencia/list'
    }
}
