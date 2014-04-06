package com.guendabiaani.domain.setm

import org.springframework.dao.DataIntegrityViolationException

class NivelEstudioController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [nivelEstudioInstanceList: NivelEstudio.list(params), nivelEstudioInstanceTotal: NivelEstudio.count()]
    }

    def create() {
        [nivelEstudioInstance: new NivelEstudio(params)]
    }

    def save() {
        def nivelEstudioInstance = new NivelEstudio(params)
        if (!nivelEstudioInstance.save(flush: true)) {
            render(view: "create", model: [nivelEstudioInstance: nivelEstudioInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'nivelEstudio.label', default: 'NivelEstudio'), nivelEstudioInstance.id])
        redirect(action: "show", id: nivelEstudioInstance.id)
    }

    def show(Long id) {
        def nivelEstudioInstance = NivelEstudio.get(id)
        if (!nivelEstudioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'nivelEstudio.label', default: 'NivelEstudio'), id])
            redirect(action: "list")
            return
        }

        [nivelEstudioInstance: nivelEstudioInstance]
    }

    def edit(Long id) {
        def nivelEstudioInstance = NivelEstudio.get(id)
        if (!nivelEstudioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'nivelEstudio.label', default: 'NivelEstudio'), id])
            redirect(action: "list")
            return
        }

        [nivelEstudioInstance: nivelEstudioInstance]
    }

    def update(Long id, Long version) {
        def nivelEstudioInstance = NivelEstudio.get(id)
        if (!nivelEstudioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'nivelEstudio.label', default: 'NivelEstudio'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (nivelEstudioInstance.version > version) {
                nivelEstudioInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'nivelEstudio.label', default: 'NivelEstudio')] as Object[],
                          "Another user has updated this NivelEstudio while you were editing")
                render(view: "edit", model: [nivelEstudioInstance: nivelEstudioInstance])
                return
            }
        }

        nivelEstudioInstance.properties = params

        if (!nivelEstudioInstance.save(flush: true)) {
            render(view: "edit", model: [nivelEstudioInstance: nivelEstudioInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'nivelEstudio.label', default: 'NivelEstudio'), nivelEstudioInstance.id])
        redirect(action: "show", id: nivelEstudioInstance.id)
    }

    def delete(Long id) {
        def nivelEstudioInstance = NivelEstudio.get(id)
        if (!nivelEstudioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'nivelEstudio.label', default: 'NivelEstudio'), id])
            redirect(action: "list")
            return
        }

        try {
            nivelEstudioInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'nivelEstudio.label', default: 'NivelEstudio'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'nivelEstudio.label', default: 'NivelEstudio'), id])
            redirect(action: "show", id: id)
        }
    }
}
