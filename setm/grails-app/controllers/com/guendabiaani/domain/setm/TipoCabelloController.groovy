package com.guendabiaani.domain.setm

import org.springframework.dao.DataIntegrityViolationException

class TipoCabelloController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [tipoCabelloInstanceList: TipoCabello.list(params), tipoCabelloInstanceTotal: TipoCabello.count()]
    }

    def create() {
        [tipoCabelloInstance: new TipoCabello(params)]
    }

    def save() {
        def tipoCabelloInstance = new TipoCabello(params)
        if (!tipoCabelloInstance.save(flush: true)) {
            render(view: "create", model: [tipoCabelloInstance: tipoCabelloInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'tipoCabello.label', default: 'TipoCabello'), tipoCabelloInstance.id])
        redirect(action: "show", id: tipoCabelloInstance.id)
    }

    def show(Long id) {
        def tipoCabelloInstance = TipoCabello.get(id)
        if (!tipoCabelloInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'tipoCabello.label', default: 'TipoCabello'), id])
            redirect(action: "list")
            return
        }

        [tipoCabelloInstance: tipoCabelloInstance]
    }

    def edit(Long id) {
        def tipoCabelloInstance = TipoCabello.get(id)
        if (!tipoCabelloInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'tipoCabello.label', default: 'TipoCabello'), id])
            redirect(action: "list")
            return
        }

        [tipoCabelloInstance: tipoCabelloInstance]
    }

    def update(Long id, Long version) {
        def tipoCabelloInstance = TipoCabello.get(id)
        if (!tipoCabelloInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'tipoCabello.label', default: 'TipoCabello'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (tipoCabelloInstance.version > version) {
                tipoCabelloInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'tipoCabello.label', default: 'TipoCabello')] as Object[],
                          "Another user has updated this TipoCabello while you were editing")
                render(view: "edit", model: [tipoCabelloInstance: tipoCabelloInstance])
                return
            }
        }

        tipoCabelloInstance.properties = params

        if (!tipoCabelloInstance.save(flush: true)) {
            render(view: "edit", model: [tipoCabelloInstance: tipoCabelloInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'tipoCabello.label', default: 'TipoCabello'), tipoCabelloInstance.id])
        redirect(action: "show", id: tipoCabelloInstance.id)
    }

    def delete(Long id) {
        def tipoCabelloInstance = TipoCabello.get(id)
        if (!tipoCabelloInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'tipoCabello.label', default: 'TipoCabello'), id])
            redirect(action: "list")
            return
        }

        try {
            tipoCabelloInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'tipoCabello.label', default: 'TipoCabello'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'tipoCabello.label', default: 'TipoCabello'), id])
            redirect(action: "show", id: id)
        }
    }
}
