package com.guendabiaani.domain.setm



import org.junit.*
import grails.test.mixin.*

@TestFor(ColorOjosController)
@Mock(ColorOjos)
class ColorOjosControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/colorOjos/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.colorOjosInstanceList.size() == 0
        assert model.colorOjosInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.colorOjosInstance != null
    }

    void testSave() {
        controller.save()

        assert model.colorOjosInstance != null
        assert view == '/colorOjos/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/colorOjos/show/1'
        assert controller.flash.message != null
        assert ColorOjos.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/colorOjos/list'

        populateValidParams(params)
        def colorOjos = new ColorOjos(params)

        assert colorOjos.save() != null

        params.id = colorOjos.id

        def model = controller.show()

        assert model.colorOjosInstance == colorOjos
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/colorOjos/list'

        populateValidParams(params)
        def colorOjos = new ColorOjos(params)

        assert colorOjos.save() != null

        params.id = colorOjos.id

        def model = controller.edit()

        assert model.colorOjosInstance == colorOjos
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/colorOjos/list'

        response.reset()

        populateValidParams(params)
        def colorOjos = new ColorOjos(params)

        assert colorOjos.save() != null

        // test invalid parameters in update
        params.id = colorOjos.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/colorOjos/edit"
        assert model.colorOjosInstance != null

        colorOjos.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/colorOjos/show/$colorOjos.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        colorOjos.clearErrors()

        populateValidParams(params)
        params.id = colorOjos.id
        params.version = -1
        controller.update()

        assert view == "/colorOjos/edit"
        assert model.colorOjosInstance != null
        assert model.colorOjosInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/colorOjos/list'

        response.reset()

        populateValidParams(params)
        def colorOjos = new ColorOjos(params)

        assert colorOjos.save() != null
        assert ColorOjos.count() == 1

        params.id = colorOjos.id

        controller.delete()

        assert ColorOjos.count() == 0
        assert ColorOjos.get(colorOjos.id) == null
        assert response.redirectedUrl == '/colorOjos/list'
    }
}
