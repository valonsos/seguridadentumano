package com.guendabiaani.domain.setm



import org.junit.*
import grails.test.mixin.*

@TestFor(GrupoSanguineoController)
@Mock(GrupoSanguineo)
class GrupoSanguineoControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/grupoSanguineo/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.grupoSanguineoInstanceList.size() == 0
        assert model.grupoSanguineoInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.grupoSanguineoInstance != null
    }

    void testSave() {
        controller.save()

        assert model.grupoSanguineoInstance != null
        assert view == '/grupoSanguineo/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/grupoSanguineo/show/1'
        assert controller.flash.message != null
        assert GrupoSanguineo.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/grupoSanguineo/list'

        populateValidParams(params)
        def grupoSanguineo = new GrupoSanguineo(params)

        assert grupoSanguineo.save() != null

        params.id = grupoSanguineo.id

        def model = controller.show()

        assert model.grupoSanguineoInstance == grupoSanguineo
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/grupoSanguineo/list'

        populateValidParams(params)
        def grupoSanguineo = new GrupoSanguineo(params)

        assert grupoSanguineo.save() != null

        params.id = grupoSanguineo.id

        def model = controller.edit()

        assert model.grupoSanguineoInstance == grupoSanguineo
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/grupoSanguineo/list'

        response.reset()

        populateValidParams(params)
        def grupoSanguineo = new GrupoSanguineo(params)

        assert grupoSanguineo.save() != null

        // test invalid parameters in update
        params.id = grupoSanguineo.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/grupoSanguineo/edit"
        assert model.grupoSanguineoInstance != null

        grupoSanguineo.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/grupoSanguineo/show/$grupoSanguineo.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        grupoSanguineo.clearErrors()

        populateValidParams(params)
        params.id = grupoSanguineo.id
        params.version = -1
        controller.update()

        assert view == "/grupoSanguineo/edit"
        assert model.grupoSanguineoInstance != null
        assert model.grupoSanguineoInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/grupoSanguineo/list'

        response.reset()

        populateValidParams(params)
        def grupoSanguineo = new GrupoSanguineo(params)

        assert grupoSanguineo.save() != null
        assert GrupoSanguineo.count() == 1

        params.id = grupoSanguineo.id

        controller.delete()

        assert GrupoSanguineo.count() == 0
        assert GrupoSanguineo.get(grupoSanguineo.id) == null
        assert response.redirectedUrl == '/grupoSanguineo/list'
    }
}
