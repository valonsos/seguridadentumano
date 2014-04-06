package com.guendabiaani.domain.setm

import org.springframework.dao.DataIntegrityViolationException

class TipoDenunciaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [tipoDenunciaInstanceList: TipoDenuncia.list(params), tipoDenunciaInstanceTotal: TipoDenuncia.count()]
    }

    def create() {
        [tipoDenunciaInstance: new TipoDenuncia(params)]
    }

    def save() {
        def tipoDenunciaInstance = new TipoDenuncia(params)
        if (!tipoDenunciaInstance.save(flush: true)) {
            render(view: "create", model: [tipoDenunciaInstance: tipoDenunciaInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'tipoDenuncia.label', default: 'TipoDenuncia'), tipoDenunciaInstance.id])
        redirect(action: "show", id: tipoDenunciaInstance.id)
    }

    def show(Long id) {
        def tipoDenunciaInstance = TipoDenuncia.get(id)
        if (!tipoDenunciaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'tipoDenuncia.label', default: 'TipoDenuncia'), id])
            redirect(action: "list")
            return
        }

        [tipoDenunciaInstance: tipoDenunciaInstance]
    }

    def edit(Long id) {
        def tipoDenunciaInstance = TipoDenuncia.get(id)
        if (!tipoDenunciaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'tipoDenuncia.label', default: 'TipoDenuncia'), id])
            redirect(action: "list")
            return
        }

        [tipoDenunciaInstance: tipoDenunciaInstance]
    }

    def update(Long id, Long version) {
        def tipoDenunciaInstance = TipoDenuncia.get(id)
        if (!tipoDenunciaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'tipoDenuncia.label', default: 'TipoDenuncia'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (tipoDenunciaInstance.version > version) {
                tipoDenunciaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'tipoDenuncia.label', default: 'TipoDenuncia')] as Object[],
                          "Another user has updated this TipoDenuncia while you were editing")
                render(view: "edit", model: [tipoDenunciaInstance: tipoDenunciaInstance])
                return
            }
        }

        tipoDenunciaInstance.properties = params

        if (!tipoDenunciaInstance.save(flush: true)) {
            render(view: "edit", model: [tipoDenunciaInstance: tipoDenunciaInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'tipoDenuncia.label', default: 'TipoDenuncia'), tipoDenunciaInstance.id])
        redirect(action: "show", id: tipoDenunciaInstance.id)
    }

    def delete(Long id) {
        def tipoDenunciaInstance = TipoDenuncia.get(id)
        if (!tipoDenunciaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'tipoDenuncia.label', default: 'TipoDenuncia'), id])
            redirect(action: "list")
            return
        }

        try {
            tipoDenunciaInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'tipoDenuncia.label', default: 'TipoDenuncia'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'tipoDenuncia.label', default: 'TipoDenuncia'), id])
            redirect(action: "show", id: id)
        }
    }
}
