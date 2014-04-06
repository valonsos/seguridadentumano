package com.guendabiaani.domain.setm



import org.junit.*
import grails.test.mixin.*

@TestFor(AsaltoCamionesController)
@Mock(AsaltoCamiones)
class AsaltoCamionesControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/asaltoCamiones/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.asaltoCamionesInstanceList.size() == 0
        assert model.asaltoCamionesInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.asaltoCamionesInstance != null
    }

    void testSave() {
        controller.save()

        assert model.asaltoCamionesInstance != null
        assert view == '/asaltoCamiones/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/asaltoCamiones/show/1'
        assert controller.flash.message != null
        assert AsaltoCamiones.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/asaltoCamiones/list'

        populateValidParams(params)
        def asaltoCamiones = new AsaltoCamiones(params)

        assert asaltoCamiones.save() != null

        params.id = asaltoCamiones.id

        def model = controller.show()

        assert model.asaltoCamionesInstance == asaltoCamiones
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/asaltoCamiones/list'

        populateValidParams(params)
        def asaltoCamiones = new AsaltoCamiones(params)

        assert asaltoCamiones.save() != null

        params.id = asaltoCamiones.id

        def model = controller.edit()

        assert model.asaltoCamionesInstance == asaltoCamiones
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/asaltoCamiones/list'

        response.reset()

        populateValidParams(params)
        def asaltoCamiones = new AsaltoCamiones(params)

        assert asaltoCamiones.save() != null

        // test invalid parameters in update
        params.id = asaltoCamiones.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/asaltoCamiones/edit"
        assert model.asaltoCamionesInstance != null

        asaltoCamiones.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/asaltoCamiones/show/$asaltoCamiones.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        asaltoCamiones.clearErrors()

        populateValidParams(params)
        params.id = asaltoCamiones.id
        params.version = -1
        controller.update()

        assert view == "/asaltoCamiones/edit"
        assert model.asaltoCamionesInstance != null
        assert model.asaltoCamionesInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/asaltoCamiones/list'

        response.reset()

        populateValidParams(params)
        def asaltoCamiones = new AsaltoCamiones(params)

        assert asaltoCamiones.save() != null
        assert AsaltoCamiones.count() == 1

        params.id = asaltoCamiones.id

        controller.delete()

        assert AsaltoCamiones.count() == 0
        assert AsaltoCamiones.get(asaltoCamiones.id) == null
        assert response.redirectedUrl == '/asaltoCamiones/list'
    }
}
