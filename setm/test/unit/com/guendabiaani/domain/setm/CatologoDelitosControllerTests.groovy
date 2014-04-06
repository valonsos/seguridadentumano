package com.guendabiaani.domain.setm



import org.junit.*
import grails.test.mixin.*

@TestFor(CatologoDelitosController)
@Mock(CatologoDelitos)
class CatologoDelitosControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/catologoDelitos/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.catologoDelitosInstanceList.size() == 0
        assert model.catologoDelitosInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.catologoDelitosInstance != null
    }

    void testSave() {
        controller.save()

        assert model.catologoDelitosInstance != null
        assert view == '/catologoDelitos/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/catologoDelitos/show/1'
        assert controller.flash.message != null
        assert CatologoDelitos.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/catologoDelitos/list'

        populateValidParams(params)
        def catologoDelitos = new CatologoDelitos(params)

        assert catologoDelitos.save() != null

        params.id = catologoDelitos.id

        def model = controller.show()

        assert model.catologoDelitosInstance == catologoDelitos
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/catologoDelitos/list'

        populateValidParams(params)
        def catologoDelitos = new CatologoDelitos(params)

        assert catologoDelitos.save() != null

        params.id = catologoDelitos.id

        def model = controller.edit()

        assert model.catologoDelitosInstance == catologoDelitos
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/catologoDelitos/list'

        response.reset()

        populateValidParams(params)
        def catologoDelitos = new CatologoDelitos(params)

        assert catologoDelitos.save() != null

        // test invalid parameters in update
        params.id = catologoDelitos.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/catologoDelitos/edit"
        assert model.catologoDelitosInstance != null

        catologoDelitos.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/catologoDelitos/show/$catologoDelitos.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        catologoDelitos.clearErrors()

        populateValidParams(params)
        params.id = catologoDelitos.id
        params.version = -1
        controller.update()

        assert view == "/catologoDelitos/edit"
        assert model.catologoDelitosInstance != null
        assert model.catologoDelitosInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/catologoDelitos/list'

        response.reset()

        populateValidParams(params)
        def catologoDelitos = new CatologoDelitos(params)

        assert catologoDelitos.save() != null
        assert CatologoDelitos.count() == 1

        params.id = catologoDelitos.id

        controller.delete()

        assert CatologoDelitos.count() == 0
        assert CatologoDelitos.get(catologoDelitos.id) == null
        assert response.redirectedUrl == '/catologoDelitos/list'
    }
}
