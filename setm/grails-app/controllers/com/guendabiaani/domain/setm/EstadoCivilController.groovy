package com.guendabiaani.domain.setm

import org.springframework.dao.DataIntegrityViolationException

class EstadoCivilController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [estadoCivilInstanceList: EstadoCivil.list(params), estadoCivilInstanceTotal: EstadoCivil.count()]
    }

    def create() {
        [estadoCivilInstance: new EstadoCivil(params)]
    }

    def save() {
        def estadoCivilInstance = new EstadoCivil(params)
        if (!estadoCivilInstance.save(flush: true)) {
            render(view: "create", model: [estadoCivilInstance: estadoCivilInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'estadoCivil.label', default: 'EstadoCivil'), estadoCivilInstance.id])
        redirect(action: "show", id: estadoCivilInstance.id)
    }

    def show(Long id) {
        def estadoCivilInstance = EstadoCivil.get(id)
        if (!estadoCivilInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'estadoCivil.label', default: 'EstadoCivil'), id])
            redirect(action: "list")
            return
        }

        [estadoCivilInstance: estadoCivilInstance]
    }

    def edit(Long id) {
        def estadoCivilInstance = EstadoCivil.get(id)
        if (!estadoCivilInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'estadoCivil.label', default: 'EstadoCivil'), id])
            redirect(action: "list")
            return
        }

        [estadoCivilInstance: estadoCivilInstance]
    }

    def update(Long id, Long version) {
        def estadoCivilInstance = EstadoCivil.get(id)
        if (!estadoCivilInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'estadoCivil.label', default: 'EstadoCivil'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (estadoCivilInstance.version > version) {
                estadoCivilInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'estadoCivil.label', default: 'EstadoCivil')] as Object[],
                          "Another user has updated this EstadoCivil while you were editing")
                render(view: "edit", model: [estadoCivilInstance: estadoCivilInstance])
                return
            }
        }

        estadoCivilInstance.properties = params

        if (!estadoCivilInstance.save(flush: true)) {
            render(view: "edit", model: [estadoCivilInstance: estadoCivilInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'estadoCivil.label', default: 'EstadoCivil'), estadoCivilInstance.id])
        redirect(action: "show", id: estadoCivilInstance.id)
    }

    def delete(Long id) {
        def estadoCivilInstance = EstadoCivil.get(id)
        if (!estadoCivilInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'estadoCivil.label', default: 'EstadoCivil'), id])
            redirect(action: "list")
            return
        }

        try {
            estadoCivilInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'estadoCivil.label', default: 'EstadoCivil'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'estadoCivil.label', default: 'EstadoCivil'), id])
            redirect(action: "show", id: id)
        }
    }
}
