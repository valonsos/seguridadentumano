package com.guendabiaani.domain.setm



import org.junit.*
import grails.test.mixin.*

@TestFor(EstadoCivilController)
@Mock(EstadoCivil)
class EstadoCivilControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/estadoCivil/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.estadoCivilInstanceList.size() == 0
        assert model.estadoCivilInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.estadoCivilInstance != null
    }

    void testSave() {
        controller.save()

        assert model.estadoCivilInstance != null
        assert view == '/estadoCivil/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/estadoCivil/show/1'
        assert controller.flash.message != null
        assert EstadoCivil.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/estadoCivil/list'

        populateValidParams(params)
        def estadoCivil = new EstadoCivil(params)

        assert estadoCivil.save() != null

        params.id = estadoCivil.id

        def model = controller.show()

        assert model.estadoCivilInstance == estadoCivil
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/estadoCivil/list'

        populateValidParams(params)
        def estadoCivil = new EstadoCivil(params)

        assert estadoCivil.save() != null

        params.id = estadoCivil.id

        def model = controller.edit()

        assert model.estadoCivilInstance == estadoCivil
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/estadoCivil/list'

        response.reset()

        populateValidParams(params)
        def estadoCivil = new EstadoCivil(params)

        assert estadoCivil.save() != null

        // test invalid parameters in update
        params.id = estadoCivil.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/estadoCivil/edit"
        assert model.estadoCivilInstance != null

        estadoCivil.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/estadoCivil/show/$estadoCivil.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        estadoCivil.clearErrors()

        populateValidParams(params)
        params.id = estadoCivil.id
        params.version = -1
        controller.update()

        assert view == "/estadoCivil/edit"
        assert model.estadoCivilInstance != null
        assert model.estadoCivilInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/estadoCivil/list'

        response.reset()

        populateValidParams(params)
        def estadoCivil = new EstadoCivil(params)

        assert estadoCivil.save() != null
        assert EstadoCivil.count() == 1

        params.id = estadoCivil.id

        controller.delete()

        assert EstadoCivil.count() == 0
        assert EstadoCivil.get(estadoCivil.id) == null
        assert response.redirectedUrl == '/estadoCivil/list'
    }
}
