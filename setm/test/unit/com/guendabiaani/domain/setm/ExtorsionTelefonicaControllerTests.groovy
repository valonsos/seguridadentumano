package com.guendabiaani.domain.setm



import org.junit.*
import grails.test.mixin.*

@TestFor(ExtorsionTelefonicaController)
@Mock(ExtorsionTelefonica)
class ExtorsionTelefonicaControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/extorsionTelefonica/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.extorsionTelefonicaInstanceList.size() == 0
        assert model.extorsionTelefonicaInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.extorsionTelefonicaInstance != null
    }

    void testSave() {
        controller.save()

        assert model.extorsionTelefonicaInstance != null
        assert view == '/extorsionTelefonica/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/extorsionTelefonica/show/1'
        assert controller.flash.message != null
        assert ExtorsionTelefonica.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/extorsionTelefonica/list'

        populateValidParams(params)
        def extorsionTelefonica = new ExtorsionTelefonica(params)

        assert extorsionTelefonica.save() != null

        params.id = extorsionTelefonica.id

        def model = controller.show()

        assert model.extorsionTelefonicaInstance == extorsionTelefonica
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/extorsionTelefonica/list'

        populateValidParams(params)
        def extorsionTelefonica = new ExtorsionTelefonica(params)

        assert extorsionTelefonica.save() != null

        params.id = extorsionTelefonica.id

        def model = controller.edit()

        assert model.extorsionTelefonicaInstance == extorsionTelefonica
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/extorsionTelefonica/list'

        response.reset()

        populateValidParams(params)
        def extorsionTelefonica = new ExtorsionTelefonica(params)

        assert extorsionTelefonica.save() != null

        // test invalid parameters in update
        params.id = extorsionTelefonica.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/extorsionTelefonica/edit"
        assert model.extorsionTelefonicaInstance != null

        extorsionTelefonica.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/extorsionTelefonica/show/$extorsionTelefonica.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        extorsionTelefonica.clearErrors()

        populateValidParams(params)
        params.id = extorsionTelefonica.id
        params.version = -1
        controller.update()

        assert view == "/extorsionTelefonica/edit"
        assert model.extorsionTelefonicaInstance != null
        assert model.extorsionTelefonicaInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/extorsionTelefonica/list'

        response.reset()

        populateValidParams(params)
        def extorsionTelefonica = new ExtorsionTelefonica(params)

        assert extorsionTelefonica.save() != null
        assert ExtorsionTelefonica.count() == 1

        params.id = extorsionTelefonica.id

        controller.delete()

        assert ExtorsionTelefonica.count() == 0
        assert ExtorsionTelefonica.get(extorsionTelefonica.id) == null
        assert response.redirectedUrl == '/extorsionTelefonica/list'
    }
}
