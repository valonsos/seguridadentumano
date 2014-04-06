package com.guendabiaani.domain.setm



import org.junit.*
import grails.test.mixin.*

@TestFor(ColorCabelloController)
@Mock(ColorCabello)
class ColorCabelloControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/colorCabello/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.colorCabelloInstanceList.size() == 0
        assert model.colorCabelloInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.colorCabelloInstance != null
    }

    void testSave() {
        controller.save()

        assert model.colorCabelloInstance != null
        assert view == '/colorCabello/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/colorCabello/show/1'
        assert controller.flash.message != null
        assert ColorCabello.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/colorCabello/list'

        populateValidParams(params)
        def colorCabello = new ColorCabello(params)

        assert colorCabello.save() != null

        params.id = colorCabello.id

        def model = controller.show()

        assert model.colorCabelloInstance == colorCabello
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/colorCabello/list'

        populateValidParams(params)
        def colorCabello = new ColorCabello(params)

        assert colorCabello.save() != null

        params.id = colorCabello.id

        def model = controller.edit()

        assert model.colorCabelloInstance == colorCabello
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/colorCabello/list'

        response.reset()

        populateValidParams(params)
        def colorCabello = new ColorCabello(params)

        assert colorCabello.save() != null

        // test invalid parameters in update
        params.id = colorCabello.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/colorCabello/edit"
        assert model.colorCabelloInstance != null

        colorCabello.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/colorCabello/show/$colorCabello.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        colorCabello.clearErrors()

        populateValidParams(params)
        params.id = colorCabello.id
        params.version = -1
        controller.update()

        assert view == "/colorCabello/edit"
        assert model.colorCabelloInstance != null
        assert model.colorCabelloInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/colorCabello/list'

        response.reset()

        populateValidParams(params)
        def colorCabello = new ColorCabello(params)

        assert colorCabello.save() != null
        assert ColorCabello.count() == 1

        params.id = colorCabello.id

        controller.delete()

        assert ColorCabello.count() == 0
        assert ColorCabello.get(colorCabello.id) == null
        assert response.redirectedUrl == '/colorCabello/list'
    }
}
