package com.guendabiaani.domain.setm

import org.springframework.dao.DataIntegrityViolationException

class AsaltoCamionesController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [asaltoCamionesInstanceList: AsaltoCamiones.list(params), asaltoCamionesInstanceTotal: AsaltoCamiones.count()]
    }

    def create() {
        [asaltoCamionesInstance: new AsaltoCamiones(params)]
    }

    def save() {
        def asaltoCamionesInstance = new AsaltoCamiones(params)
        if (!asaltoCamionesInstance.save(flush: true)) {
            render(view: "create", model: [asaltoCamionesInstance: asaltoCamionesInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'asaltoCamiones.label', default: 'AsaltoCamiones'), asaltoCamionesInstance.id])
        redirect(action: "show", id: asaltoCamionesInstance.id)
    }

    def show(Long id) {
        def asaltoCamionesInstance = AsaltoCamiones.get(id)
        if (!asaltoCamionesInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'asaltoCamiones.label', default: 'AsaltoCamiones'), id])
            redirect(action: "list")
            return
        }

        [asaltoCamionesInstance: asaltoCamionesInstance]
    }

    def edit(Long id) {
        def asaltoCamionesInstance = AsaltoCamiones.get(id)
        if (!asaltoCamionesInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'asaltoCamiones.label', default: 'AsaltoCamiones'), id])
            redirect(action: "list")
            return
        }

        [asaltoCamionesInstance: asaltoCamionesInstance]
    }

    def update(Long id, Long version) {
        def asaltoCamionesInstance = AsaltoCamiones.get(id)
        if (!asaltoCamionesInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'asaltoCamiones.label', default: 'AsaltoCamiones'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (asaltoCamionesInstance.version > version) {
                asaltoCamionesInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'asaltoCamiones.label', default: 'AsaltoCamiones')] as Object[],
                          "Another user has updated this AsaltoCamiones while you were editing")
                render(view: "edit", model: [asaltoCamionesInstance: asaltoCamionesInstance])
                return
            }
        }

        asaltoCamionesInstance.properties = params

        if (!asaltoCamionesInstance.save(flush: true)) {
            render(view: "edit", model: [asaltoCamionesInstance: asaltoCamionesInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'asaltoCamiones.label', default: 'AsaltoCamiones'), asaltoCamionesInstance.id])
        redirect(action: "show", id: asaltoCamionesInstance.id)
    }

    def delete(Long id) {
        def asaltoCamionesInstance = AsaltoCamiones.get(id)
        if (!asaltoCamionesInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'asaltoCamiones.label', default: 'AsaltoCamiones'), id])
            redirect(action: "list")
            return
        }

        try {
            asaltoCamionesInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'asaltoCamiones.label', default: 'AsaltoCamiones'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'asaltoCamiones.label', default: 'AsaltoCamiones'), id])
            redirect(action: "show", id: id)
        }
    }
}
