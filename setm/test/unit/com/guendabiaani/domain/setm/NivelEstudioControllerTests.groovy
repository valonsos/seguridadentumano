package com.guendabiaani.domain.setm



import org.junit.*
import grails.test.mixin.*

@TestFor(NivelEstudioController)
@Mock(NivelEstudio)
class NivelEstudioControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/nivelEstudio/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.nivelEstudioInstanceList.size() == 0
        assert model.nivelEstudioInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.nivelEstudioInstance != null
    }

    void testSave() {
        controller.save()

        assert model.nivelEstudioInstance != null
        assert view == '/nivelEstudio/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/nivelEstudio/show/1'
        assert controller.flash.message != null
        assert NivelEstudio.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/nivelEstudio/list'

        populateValidParams(params)
        def nivelEstudio = new NivelEstudio(params)

        assert nivelEstudio.save() != null

        params.id = nivelEstudio.id

        def model = controller.show()

        assert model.nivelEstudioInstance == nivelEstudio
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/nivelEstudio/list'

        populateValidParams(params)
        def nivelEstudio = new NivelEstudio(params)

        assert nivelEstudio.save() != null

        params.id = nivelEstudio.id

        def model = controller.edit()

        assert model.nivelEstudioInstance == nivelEstudio
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/nivelEstudio/list'

        response.reset()

        populateValidParams(params)
        def nivelEstudio = new NivelEstudio(params)

        assert nivelEstudio.save() != null

        // test invalid parameters in update
        params.id = nivelEstudio.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/nivelEstudio/edit"
        assert model.nivelEstudioInstance != null

        nivelEstudio.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/nivelEstudio/show/$nivelEstudio.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        nivelEstudio.clearErrors()

        populateValidParams(params)
        params.id = nivelEstudio.id
        params.version = -1
        controller.update()

        assert view == "/nivelEstudio/edit"
        assert model.nivelEstudioInstance != null
        assert model.nivelEstudioInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/nivelEstudio/list'

        response.reset()

        populateValidParams(params)
        def nivelEstudio = new NivelEstudio(params)

        assert nivelEstudio.save() != null
        assert NivelEstudio.count() == 1

        params.id = nivelEstudio.id

        controller.delete()

        assert NivelEstudio.count() == 0
        assert NivelEstudio.get(nivelEstudio.id) == null
        assert response.redirectedUrl == '/nivelEstudio/list'
    }
}
