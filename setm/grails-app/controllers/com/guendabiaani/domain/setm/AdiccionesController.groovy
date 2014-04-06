package com.guendabiaani.domain.setm

import org.springframework.dao.DataIntegrityViolationException

class AdiccionesController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [adiccionesInstanceList: Adicciones.list(params), adiccionesInstanceTotal: Adicciones.count()]
    }

    def create() {
        [adiccionesInstance: new Adicciones(params)]
    }

    def save() {
        def adiccionesInstance = new Adicciones(params)
        if (!adiccionesInstance.save(flush: true)) {
            render(view: "create", model: [adiccionesInstance: adiccionesInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'adicciones.label', default: 'Adicciones'), adiccionesInstance.id])
        redirect(action: "show", id: adiccionesInstance.id)
    }

    def show(Long id) {
        def adiccionesInstance = Adicciones.get(id)
        if (!adiccionesInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'adicciones.label', default: 'Adicciones'), id])
            redirect(action: "list")
            return
        }

        [adiccionesInstance: adiccionesInstance]
    }

    def edit(Long id) {
        def adiccionesInstance = Adicciones.get(id)
        if (!adiccionesInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'adicciones.label', default: 'Adicciones'), id])
            redirect(action: "list")
            return
        }

        [adiccionesInstance: adiccionesInstance]
    }

    def update(Long id, Long version) {
        def adiccionesInstance = Adicciones.get(id)
        if (!adiccionesInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'adicciones.label', default: 'Adicciones'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (adiccionesInstance.version > version) {
                adiccionesInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'adicciones.label', default: 'Adicciones')] as Object[],
                          "Another user has updated this Adicciones while you were editing")
                render(view: "edit", model: [adiccionesInstance: adiccionesInstance])
                return
            }
        }

        adiccionesInstance.properties = params

        if (!adiccionesInstance.save(flush: true)) {
            render(view: "edit", model: [adiccionesInstance: adiccionesInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'adicciones.label', default: 'Adicciones'), adiccionesInstance.id])
        redirect(action: "show", id: adiccionesInstance.id)
    }

    def delete(Long id) {
        def adiccionesInstance = Adicciones.get(id)
        if (!adiccionesInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'adicciones.label', default: 'Adicciones'), id])
            redirect(action: "list")
            return
        }

        try {
            adiccionesInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'adicciones.label', default: 'Adicciones'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'adicciones.label', default: 'Adicciones'), id])
            redirect(action: "show", id: id)
        }
    }
}
