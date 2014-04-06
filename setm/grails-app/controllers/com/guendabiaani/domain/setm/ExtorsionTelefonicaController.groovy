package com.guendabiaani.domain.setm

import org.springframework.dao.DataIntegrityViolationException

class ExtorsionTelefonicaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [extorsionTelefonicaInstanceList: ExtorsionTelefonica.list(params), extorsionTelefonicaInstanceTotal: ExtorsionTelefonica.count()]
    }

    def create() {
        [extorsionTelefonicaInstance: new ExtorsionTelefonica(params)]
    }

    def save() {
        def extorsionTelefonicaInstance = new ExtorsionTelefonica(params)
        if (!extorsionTelefonicaInstance.save(flush: true)) {
            render(view: "create", model: [extorsionTelefonicaInstance: extorsionTelefonicaInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'extorsionTelefonica.label', default: 'ExtorsionTelefonica'), extorsionTelefonicaInstance.id])
        redirect(action: "show", id: extorsionTelefonicaInstance.id)
    }

    def show(Long id) {
        def extorsionTelefonicaInstance = ExtorsionTelefonica.get(id)
        if (!extorsionTelefonicaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'extorsionTelefonica.label', default: 'ExtorsionTelefonica'), id])
            redirect(action: "list")
            return
        }

        [extorsionTelefonicaInstance: extorsionTelefonicaInstance]
    }

    def edit(Long id) {
        def extorsionTelefonicaInstance = ExtorsionTelefonica.get(id)
        if (!extorsionTelefonicaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'extorsionTelefonica.label', default: 'ExtorsionTelefonica'), id])
            redirect(action: "list")
            return
        }

        [extorsionTelefonicaInstance: extorsionTelefonicaInstance]
    }

    def update(Long id, Long version) {
        def extorsionTelefonicaInstance = ExtorsionTelefonica.get(id)
        if (!extorsionTelefonicaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'extorsionTelefonica.label', default: 'ExtorsionTelefonica'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (extorsionTelefonicaInstance.version > version) {
                extorsionTelefonicaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'extorsionTelefonica.label', default: 'ExtorsionTelefonica')] as Object[],
                          "Another user has updated this ExtorsionTelefonica while you were editing")
                render(view: "edit", model: [extorsionTelefonicaInstance: extorsionTelefonicaInstance])
                return
            }
        }

        extorsionTelefonicaInstance.properties = params

        if (!extorsionTelefonicaInstance.save(flush: true)) {
            render(view: "edit", model: [extorsionTelefonicaInstance: extorsionTelefonicaInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'extorsionTelefonica.label', default: 'ExtorsionTelefonica'), extorsionTelefonicaInstance.id])
        redirect(action: "show", id: extorsionTelefonicaInstance.id)
    }

    def delete(Long id) {
        def extorsionTelefonicaInstance = ExtorsionTelefonica.get(id)
        if (!extorsionTelefonicaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'extorsionTelefonica.label', default: 'ExtorsionTelefonica'), id])
            redirect(action: "list")
            return
        }

        try {
            extorsionTelefonicaInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'extorsionTelefonica.label', default: 'ExtorsionTelefonica'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'extorsionTelefonica.label', default: 'ExtorsionTelefonica'), id])
            redirect(action: "show", id: id)
        }
    }
}
