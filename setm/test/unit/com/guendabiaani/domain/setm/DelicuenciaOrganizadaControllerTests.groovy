package com.guendabiaani.domain.setm



import org.junit.*
import grails.test.mixin.*

@TestFor(DelicuenciaOrganizadaController)
@Mock(DelicuenciaOrganizada)
class DelicuenciaOrganizadaControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/delicuenciaOrganizada/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.delicuenciaOrganizadaInstanceList.size() == 0
        assert model.delicuenciaOrganizadaInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.delicuenciaOrganizadaInstance != null
    }

    void testSave() {
        controller.save()

        assert model.delicuenciaOrganizadaInstance != null
        assert view == '/delicuenciaOrganizada/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/delicuenciaOrganizada/show/1'
        assert controller.flash.message != null
        assert DelicuenciaOrganizada.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/delicuenciaOrganizada/list'

        populateValidParams(params)
        def delicuenciaOrganizada = new DelicuenciaOrganizada(params)

        assert delicuenciaOrganizada.save() != null

        params.id = delicuenciaOrganizada.id

        def model = controller.show()

        assert model.delicuenciaOrganizadaInstance == delicuenciaOrganizada
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/delicuenciaOrganizada/list'

        populateValidParams(params)
        def delicuenciaOrganizada = new DelicuenciaOrganizada(params)

        assert delicuenciaOrganizada.save() != null

        params.id = delicuenciaOrganizada.id

        def model = controller.edit()

        assert model.delicuenciaOrganizadaInstance == delicuenciaOrganizada
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/delicuenciaOrganizada/list'

        response.reset()

        populateValidParams(params)
        def delicuenciaOrganizada = new DelicuenciaOrganizada(params)

        assert delicuenciaOrganizada.save() != null

        // test invalid parameters in update
        params.id = delicuenciaOrganizada.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/delicuenciaOrganizada/edit"
        assert model.delicuenciaOrganizadaInstance != null

        delicuenciaOrganizada.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/delicuenciaOrganizada/show/$delicuenciaOrganizada.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        delicuenciaOrganizada.clearErrors()

        populateValidParams(params)
        params.id = delicuenciaOrganizada.id
        params.version = -1
        controller.update()

        assert view == "/delicuenciaOrganizada/edit"
        assert model.delicuenciaOrganizadaInstance != null
        assert model.delicuenciaOrganizadaInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/delicuenciaOrganizada/list'

        response.reset()

        populateValidParams(params)
        def delicuenciaOrganizada = new DelicuenciaOrganizada(params)

        assert delicuenciaOrganizada.save() != null
        assert DelicuenciaOrganizada.count() == 1

        params.id = delicuenciaOrganizada.id

        controller.delete()

        assert DelicuenciaOrganizada.count() == 0
        assert DelicuenciaOrganizada.get(delicuenciaOrganizada.id) == null
        assert response.redirectedUrl == '/delicuenciaOrganizada/list'
    }
}
