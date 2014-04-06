package com.guendabiaani.domain.setm



import org.junit.*
import grails.test.mixin.*

@TestFor(PersonaDenuncianteController)
@Mock(PersonaDenunciante)
class PersonaDenuncianteControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/personaDenunciante/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.personaDenuncianteInstanceList.size() == 0
        assert model.personaDenuncianteInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.personaDenuncianteInstance != null
    }

    void testSave() {
        controller.save()

        assert model.personaDenuncianteInstance != null
        assert view == '/personaDenunciante/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/personaDenunciante/show/1'
        assert controller.flash.message != null
        assert PersonaDenunciante.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/personaDenunciante/list'

        populateValidParams(params)
        def personaDenunciante = new PersonaDenunciante(params)

        assert personaDenunciante.save() != null

        params.id = personaDenunciante.id

        def model = controller.show()

        assert model.personaDenuncianteInstance == personaDenunciante
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/personaDenunciante/list'

        populateValidParams(params)
        def personaDenunciante = new PersonaDenunciante(params)

        assert personaDenunciante.save() != null

        params.id = personaDenunciante.id

        def model = controller.edit()

        assert model.personaDenuncianteInstance == personaDenunciante
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/personaDenunciante/list'

        response.reset()

        populateValidParams(params)
        def personaDenunciante = new PersonaDenunciante(params)

        assert personaDenunciante.save() != null

        // test invalid parameters in update
        params.id = personaDenunciante.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/personaDenunciante/edit"
        assert model.personaDenuncianteInstance != null

        personaDenunciante.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/personaDenunciante/show/$personaDenunciante.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        personaDenunciante.clearErrors()

        populateValidParams(params)
        params.id = personaDenunciante.id
        params.version = -1
        controller.update()

        assert view == "/personaDenunciante/edit"
        assert model.personaDenuncianteInstance != null
        assert model.personaDenuncianteInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/personaDenunciante/list'

        response.reset()

        populateValidParams(params)
        def personaDenunciante = new PersonaDenunciante(params)

        assert personaDenunciante.save() != null
        assert PersonaDenunciante.count() == 1

        params.id = personaDenunciante.id

        controller.delete()

        assert PersonaDenunciante.count() == 0
        assert PersonaDenunciante.get(personaDenunciante.id) == null
        assert response.redirectedUrl == '/personaDenunciante/list'
    }
}
