package com.guendabiaani.domain.setm



import org.junit.*
import grails.test.mixin.*

@TestFor(PersonaRelacionExtraviadaController)
@Mock(PersonaRelacionExtraviada)
class PersonaRelacionExtraviadaControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/personaRelacionExtraviada/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.personaRelacionExtraviadaInstanceList.size() == 0
        assert model.personaRelacionExtraviadaInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.personaRelacionExtraviadaInstance != null
    }

    void testSave() {
        controller.save()

        assert model.personaRelacionExtraviadaInstance != null
        assert view == '/personaRelacionExtraviada/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/personaRelacionExtraviada/show/1'
        assert controller.flash.message != null
        assert PersonaRelacionExtraviada.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/personaRelacionExtraviada/list'

        populateValidParams(params)
        def personaRelacionExtraviada = new PersonaRelacionExtraviada(params)

        assert personaRelacionExtraviada.save() != null

        params.id = personaRelacionExtraviada.id

        def model = controller.show()

        assert model.personaRelacionExtraviadaInstance == personaRelacionExtraviada
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/personaRelacionExtraviada/list'

        populateValidParams(params)
        def personaRelacionExtraviada = new PersonaRelacionExtraviada(params)

        assert personaRelacionExtraviada.save() != null

        params.id = personaRelacionExtraviada.id

        def model = controller.edit()

        assert model.personaRelacionExtraviadaInstance == personaRelacionExtraviada
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/personaRelacionExtraviada/list'

        response.reset()

        populateValidParams(params)
        def personaRelacionExtraviada = new PersonaRelacionExtraviada(params)

        assert personaRelacionExtraviada.save() != null

        // test invalid parameters in update
        params.id = personaRelacionExtraviada.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/personaRelacionExtraviada/edit"
        assert model.personaRelacionExtraviadaInstance != null

        personaRelacionExtraviada.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/personaRelacionExtraviada/show/$personaRelacionExtraviada.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        personaRelacionExtraviada.clearErrors()

        populateValidParams(params)
        params.id = personaRelacionExtraviada.id
        params.version = -1
        controller.update()

        assert view == "/personaRelacionExtraviada/edit"
        assert model.personaRelacionExtraviadaInstance != null
        assert model.personaRelacionExtraviadaInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/personaRelacionExtraviada/list'

        response.reset()

        populateValidParams(params)
        def personaRelacionExtraviada = new PersonaRelacionExtraviada(params)

        assert personaRelacionExtraviada.save() != null
        assert PersonaRelacionExtraviada.count() == 1

        params.id = personaRelacionExtraviada.id

        controller.delete()

        assert PersonaRelacionExtraviada.count() == 0
        assert PersonaRelacionExtraviada.get(personaRelacionExtraviada.id) == null
        assert response.redirectedUrl == '/personaRelacionExtraviada/list'
    }
}
