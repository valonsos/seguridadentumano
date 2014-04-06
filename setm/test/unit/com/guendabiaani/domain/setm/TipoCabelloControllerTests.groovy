package com.guendabiaani.domain.setm



import org.junit.*
import grails.test.mixin.*

@TestFor(TipoCabelloController)
@Mock(TipoCabello)
class TipoCabelloControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/tipoCabello/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.tipoCabelloInstanceList.size() == 0
        assert model.tipoCabelloInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.tipoCabelloInstance != null
    }

    void testSave() {
        controller.save()

        assert model.tipoCabelloInstance != null
        assert view == '/tipoCabello/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/tipoCabello/show/1'
        assert controller.flash.message != null
        assert TipoCabello.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/tipoCabello/list'

        populateValidParams(params)
        def tipoCabello = new TipoCabello(params)

        assert tipoCabello.save() != null

        params.id = tipoCabello.id

        def model = controller.show()

        assert model.tipoCabelloInstance == tipoCabello
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/tipoCabello/list'

        populateValidParams(params)
        def tipoCabello = new TipoCabello(params)

        assert tipoCabello.save() != null

        params.id = tipoCabello.id

        def model = controller.edit()

        assert model.tipoCabelloInstance == tipoCabello
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/tipoCabello/list'

        response.reset()

        populateValidParams(params)
        def tipoCabello = new TipoCabello(params)

        assert tipoCabello.save() != null

        // test invalid parameters in update
        params.id = tipoCabello.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/tipoCabello/edit"
        assert model.tipoCabelloInstance != null

        tipoCabello.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/tipoCabello/show/$tipoCabello.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        tipoCabello.clearErrors()

        populateValidParams(params)
        params.id = tipoCabello.id
        params.version = -1
        controller.update()

        assert view == "/tipoCabello/edit"
        assert model.tipoCabelloInstance != null
        assert model.tipoCabelloInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/tipoCabello/list'

        response.reset()

        populateValidParams(params)
        def tipoCabello = new TipoCabello(params)

        assert tipoCabello.save() != null
        assert TipoCabello.count() == 1

        params.id = tipoCabello.id

        controller.delete()

        assert TipoCabello.count() == 0
        assert TipoCabello.get(tipoCabello.id) == null
        assert response.redirectedUrl == '/tipoCabello/list'
    }
}
