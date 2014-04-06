package com.guendabiaani.domain.setm

import org.springframework.dao.DataIntegrityViolationException

class RutaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [rutaInstanceList: Ruta.list(params), rutaInstanceTotal: Ruta.count()]
    }

    def create() {
        [rutaInstance: new Ruta(params)]
    }

    def save() {
        def rutaInstance = new Ruta(params)
        if (!rutaInstance.save(flush: true)) {
            render(view: "create", model: [rutaInstance: rutaInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'ruta.label', default: 'Ruta'), rutaInstance.id])
        redirect(action: "show", id: rutaInstance.id)
    }

    def show(Long id) {
        def rutaInstance = Ruta.get(id)
        if (!rutaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ruta.label', default: 'Ruta'), id])
            redirect(action: "list")
            return
        }

        [rutaInstance: rutaInstance]
    }

    def edit(Long id) {
        def rutaInstance = Ruta.get(id)
        if (!rutaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ruta.label', default: 'Ruta'), id])
            redirect(action: "list")
            return
        }

        [rutaInstance: rutaInstance]
    }

    def update(Long id, Long version) {
        def rutaInstance = Ruta.get(id)
        if (!rutaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ruta.label', default: 'Ruta'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (rutaInstance.version > version) {
                rutaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'ruta.label', default: 'Ruta')] as Object[],
                          "Another user has updated this Ruta while you were editing")
                render(view: "edit", model: [rutaInstance: rutaInstance])
                return
            }
        }

        rutaInstance.properties = params

        if (!rutaInstance.save(flush: true)) {
            render(view: "edit", model: [rutaInstance: rutaInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'ruta.label', default: 'Ruta'), rutaInstance.id])
        redirect(action: "show", id: rutaInstance.id)
    }

    def delete(Long id) {
        def rutaInstance = Ruta.get(id)
        if (!rutaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ruta.label', default: 'Ruta'), id])
            redirect(action: "list")
            return
        }

        try {
            rutaInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'ruta.label', default: 'Ruta'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'ruta.label', default: 'Ruta'), id])
            redirect(action: "show", id: id)
        }
    }
}
