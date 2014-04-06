package com.guendabiaani.domain.setm

import org.springframework.dao.DataIntegrityViolationException

class DelicuenciaOrganizadaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [delicuenciaOrganizadaInstanceList: DelicuenciaOrganizada.list(params), delicuenciaOrganizadaInstanceTotal: DelicuenciaOrganizada.count()]
    }

    def create() {
        [delicuenciaOrganizadaInstance: new DelicuenciaOrganizada(params)]
    }

    def save() {
        def delicuenciaOrganizadaInstance = new DelicuenciaOrganizada(params)
        if (!delicuenciaOrganizadaInstance.save(flush: true)) {
            render(view: "create", model: [delicuenciaOrganizadaInstance: delicuenciaOrganizadaInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'delicuenciaOrganizada.label', default: 'DelicuenciaOrganizada'), delicuenciaOrganizadaInstance.id])
        redirect(action: "show", id: delicuenciaOrganizadaInstance.id)
    }

    def show(Long id) {
        def delicuenciaOrganizadaInstance = DelicuenciaOrganizada.get(id)
        if (!delicuenciaOrganizadaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'delicuenciaOrganizada.label', default: 'DelicuenciaOrganizada'), id])
            redirect(action: "list")
            return
        }

        [delicuenciaOrganizadaInstance: delicuenciaOrganizadaInstance]
    }

    def edit(Long id) {
        def delicuenciaOrganizadaInstance = DelicuenciaOrganizada.get(id)
        if (!delicuenciaOrganizadaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'delicuenciaOrganizada.label', default: 'DelicuenciaOrganizada'), id])
            redirect(action: "list")
            return
        }

        [delicuenciaOrganizadaInstance: delicuenciaOrganizadaInstance]
    }

    def update(Long id, Long version) {
        def delicuenciaOrganizadaInstance = DelicuenciaOrganizada.get(id)
        if (!delicuenciaOrganizadaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'delicuenciaOrganizada.label', default: 'DelicuenciaOrganizada'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (delicuenciaOrganizadaInstance.version > version) {
                delicuenciaOrganizadaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'delicuenciaOrganizada.label', default: 'DelicuenciaOrganizada')] as Object[],
                          "Another user has updated this DelicuenciaOrganizada while you were editing")
                render(view: "edit", model: [delicuenciaOrganizadaInstance: delicuenciaOrganizadaInstance])
                return
            }
        }

        delicuenciaOrganizadaInstance.properties = params

        if (!delicuenciaOrganizadaInstance.save(flush: true)) {
            render(view: "edit", model: [delicuenciaOrganizadaInstance: delicuenciaOrganizadaInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'delicuenciaOrganizada.label', default: 'DelicuenciaOrganizada'), delicuenciaOrganizadaInstance.id])
        redirect(action: "show", id: delicuenciaOrganizadaInstance.id)
    }

    def delete(Long id) {
        def delicuenciaOrganizadaInstance = DelicuenciaOrganizada.get(id)
        if (!delicuenciaOrganizadaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'delicuenciaOrganizada.label', default: 'DelicuenciaOrganizada'), id])
            redirect(action: "list")
            return
        }

        try {
            delicuenciaOrganizadaInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'delicuenciaOrganizada.label', default: 'DelicuenciaOrganizada'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'delicuenciaOrganizada.label', default: 'DelicuenciaOrganizada'), id])
            redirect(action: "show", id: id)
        }
    }
}
