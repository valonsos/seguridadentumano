package com.guendabiaani.domain.setm



import org.junit.*
import grails.test.mixin.*

@TestFor(PersonaExtraviadaController)
@Mock(PersonaExtraviada)
class PersonaExtraviadaControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/personaExtraviada/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.personaExtraviadaInstanceList.size() == 0
        assert model.personaExtraviadaInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.personaExtraviadaInstance != null
    }

    void testSave() {
        controller.save()

        assert model.personaExtraviadaInstance != null
        assert view == '/personaExtraviada/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/personaExtraviada/show/1'
        assert controller.flash.message != null
        assert PersonaExtraviada.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/personaExtraviada/list'

        populateValidParams(params)
        def personaExtraviada = new PersonaExtraviada(params)

        assert personaExtraviada.save() != null

        params.id = personaExtraviada.id

        def model = controller.show()

        assert model.personaExtraviadaInstance == personaExtraviada
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/personaExtraviada/list'

        populateValidParams(params)
        def personaExtraviada = new PersonaExtraviada(params)

        assert personaExtraviada.save() != null

        params.id = personaExtraviada.id

        def model = controller.edit()

        assert model.personaExtraviadaInstance == personaExtraviada
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/personaExtraviada/list'

        response.reset()

        populateValidParams(params)
        def personaExtraviada = new PersonaExtraviada(params)

        assert personaExtraviada.save() != null

        // test invalid parameters in update
        params.id = personaExtraviada.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/personaExtraviada/edit"
        assert model.personaExtraviadaInstance != null

        personaExtraviada.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/personaExtraviada/show/$personaExtraviada.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        personaExtraviada.clearErrors()

        populateValidParams(params)
        params.id = personaExtraviada.id
        params.version = -1
        controller.update()

        assert view == "/personaExtraviada/edit"
        assert model.personaExtraviadaInstance != null
        assert model.personaExtraviadaInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/personaExtraviada/list'

        response.reset()

        populateValidParams(params)
        def personaExtraviada = new PersonaExtraviada(params)

        assert personaExtraviada.save() != null
        assert PersonaExtraviada.count() == 1

        params.id = personaExtraviada.id

        controller.delete()

        assert PersonaExtraviada.count() == 0
        assert PersonaExtraviada.get(personaExtraviada.id) == null
        assert response.redirectedUrl == '/personaExtraviada/list'
    }
}
