package com.guendabiaani.domain.setm

import org.springframework.dao.DataIntegrityViolationException

class TipoAusenciaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [tipoAusenciaInstanceList: TipoAusencia.list(params), tipoAusenciaInstanceTotal: TipoAusencia.count()]
    }

    def create() {
        [tipoAusenciaInstance: new TipoAusencia(params)]
    }

    def save() {
        def tipoAusenciaInstance = new TipoAusencia(params)
        if (!tipoAusenciaInstance.save(flush: true)) {
            render(view: "create", model: [tipoAusenciaInstance: tipoAusenciaInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'tipoAusencia.label', default: 'TipoAusencia'), tipoAusenciaInstance.id])
        redirect(action: "show", id: tipoAusenciaInstance.id)
    }

    def show(Long id) {
        def tipoAusenciaInstance = TipoAusencia.get(id)
        if (!tipoAusenciaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'tipoAusencia.label', default: 'TipoAusencia'), id])
            redirect(action: "list")
            return
        }

        [tipoAusenciaInstance: tipoAusenciaInstance]
    }

    def edit(Long id) {
        def tipoAusenciaInstance = TipoAusencia.get(id)
        if (!tipoAusenciaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'tipoAusencia.label', default: 'TipoAusencia'), id])
            redirect(action: "list")
            return
        }

        [tipoAusenciaInstance: tipoAusenciaInstance]
    }

    def update(Long id, Long version) {
        def tipoAusenciaInstance = TipoAusencia.get(id)
        if (!tipoAusenciaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'tipoAusencia.label', default: 'TipoAusencia'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (tipoAusenciaInstance.version > version) {
                tipoAusenciaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'tipoAusencia.label', default: 'TipoAusencia')] as Object[],
                          "Another user has updated this TipoAusencia while you were editing")
                render(view: "edit", model: [tipoAusenciaInstance: tipoAusenciaInstance])
                return
            }
        }

        tipoAusenciaInstance.properties = params

        if (!tipoAusenciaInstance.save(flush: true)) {
            render(view: "edit", model: [tipoAusenciaInstance: tipoAusenciaInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'tipoAusencia.label', default: 'TipoAusencia'), tipoAusenciaInstance.id])
        redirect(action: "show", id: tipoAusenciaInstance.id)
    }

    def delete(Long id) {
        def tipoAusenciaInstance = TipoAusencia.get(id)
        if (!tipoAusenciaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'tipoAusencia.label', default: 'TipoAusencia'), id])
            redirect(action: "list")
            return
        }

        try {
            tipoAusenciaInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'tipoAusencia.label', default: 'TipoAusencia'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'tipoAusencia.label', default: 'TipoAusencia'), id])
            redirect(action: "show", id: id)
        }
    }
}
