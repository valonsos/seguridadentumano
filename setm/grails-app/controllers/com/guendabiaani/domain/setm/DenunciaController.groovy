package com.guendabiaani.domain.setm

import org.springframework.dao.DataIntegrityViolationException

class DenunciaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [denunciaInstanceList: Denuncia.list(params), denunciaInstanceTotal: Denuncia.count()]
    }

    def create() {
        [denunciaInstance: new Denuncia(params)]
    }

    def save() {
        def denunciaInstance = new Denuncia(params)
        if (!denunciaInstance.save(flush: true)) {
            render(view: "create", model: [denunciaInstance: denunciaInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'denuncia.label', default: 'Denuncia'), denunciaInstance.id])
        redirect(action: "show", id: denunciaInstance.id)
    }

    def show(Long id) {
        def denunciaInstance = Denuncia.get(id)
        if (!denunciaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'denuncia.label', default: 'Denuncia'), id])
            redirect(action: "list")
            return
        }

        [denunciaInstance: denunciaInstance]
    }

    def edit(Long id) {
        def denunciaInstance = Denuncia.get(id)
        if (!denunciaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'denuncia.label', default: 'Denuncia'), id])
            redirect(action: "list")
            return
        }

        [denunciaInstance: denunciaInstance]
    }

    def update(Long id, Long version) {
        def denunciaInstance = Denuncia.get(id)
        if (!denunciaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'denuncia.label', default: 'Denuncia'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (denunciaInstance.version > version) {
                denunciaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'denuncia.label', default: 'Denuncia')] as Object[],
                          "Another user has updated this Denuncia while you were editing")
                render(view: "edit", model: [denunciaInstance: denunciaInstance])
                return
            }
        }

        denunciaInstance.properties = params

        if (!denunciaInstance.save(flush: true)) {
            render(view: "edit", model: [denunciaInstance: denunciaInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'denuncia.label', default: 'Denuncia'), denunciaInstance.id])
        redirect(action: "show", id: denunciaInstance.id)
    }

    def delete(Long id) {
        def denunciaInstance = Denuncia.get(id)
        if (!denunciaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'denuncia.label', default: 'Denuncia'), id])
            redirect(action: "list")
            return
        }

        try {
            denunciaInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'denuncia.label', default: 'Denuncia'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'denuncia.label', default: 'Denuncia'), id])
            redirect(action: "show", id: id)
        }
    }
}
