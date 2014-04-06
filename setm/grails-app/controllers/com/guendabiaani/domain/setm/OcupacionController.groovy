package com.guendabiaani.domain.setm

import org.springframework.dao.DataIntegrityViolationException

class OcupacionController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [ocupacionInstanceList: Ocupacion.list(params), ocupacionInstanceTotal: Ocupacion.count()]
    }

    def create() {
        [ocupacionInstance: new Ocupacion(params)]
    }

    def save() {
        def ocupacionInstance = new Ocupacion(params)
        if (!ocupacionInstance.save(flush: true)) {
            render(view: "create", model: [ocupacionInstance: ocupacionInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'ocupacion.label', default: 'Ocupacion'), ocupacionInstance.id])
        redirect(action: "show", id: ocupacionInstance.id)
    }

    def show(Long id) {
        def ocupacionInstance = Ocupacion.get(id)
        if (!ocupacionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ocupacion.label', default: 'Ocupacion'), id])
            redirect(action: "list")
            return
        }

        [ocupacionInstance: ocupacionInstance]
    }

    def edit(Long id) {
        def ocupacionInstance = Ocupacion.get(id)
        if (!ocupacionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ocupacion.label', default: 'Ocupacion'), id])
            redirect(action: "list")
            return
        }

        [ocupacionInstance: ocupacionInstance]
    }

    def update(Long id, Long version) {
        def ocupacionInstance = Ocupacion.get(id)
        if (!ocupacionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ocupacion.label', default: 'Ocupacion'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (ocupacionInstance.version > version) {
                ocupacionInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'ocupacion.label', default: 'Ocupacion')] as Object[],
                          "Another user has updated this Ocupacion while you were editing")
                render(view: "edit", model: [ocupacionInstance: ocupacionInstance])
                return
            }
        }

        ocupacionInstance.properties = params

        if (!ocupacionInstance.save(flush: true)) {
            render(view: "edit", model: [ocupacionInstance: ocupacionInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'ocupacion.label', default: 'Ocupacion'), ocupacionInstance.id])
        redirect(action: "show", id: ocupacionInstance.id)
    }

    def delete(Long id) {
        def ocupacionInstance = Ocupacion.get(id)
        if (!ocupacionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ocupacion.label', default: 'Ocupacion'), id])
            redirect(action: "list")
            return
        }

        try {
            ocupacionInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'ocupacion.label', default: 'Ocupacion'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'ocupacion.label', default: 'Ocupacion'), id])
            redirect(action: "show", id: id)
        }
    }
}
