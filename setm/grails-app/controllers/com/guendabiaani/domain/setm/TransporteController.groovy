package com.guendabiaani.domain.setm

import org.springframework.dao.DataIntegrityViolationException

class TransporteController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [transporteInstanceList: Transporte.list(params), transporteInstanceTotal: Transporte.count()]
    }

    def create() {
        [transporteInstance: new Transporte(params)]
    }

    def save() {
        def transporteInstance = new Transporte(params)
        if (!transporteInstance.save(flush: true)) {
            render(view: "create", model: [transporteInstance: transporteInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'transporte.label', default: 'Transporte'), transporteInstance.id])
        redirect(action: "show", id: transporteInstance.id)
    }

    def show(Long id) {
        def transporteInstance = Transporte.get(id)
        if (!transporteInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'transporte.label', default: 'Transporte'), id])
            redirect(action: "list")
            return
        }

        [transporteInstance: transporteInstance]
    }

    def edit(Long id) {
        def transporteInstance = Transporte.get(id)
        if (!transporteInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'transporte.label', default: 'Transporte'), id])
            redirect(action: "list")
            return
        }

        [transporteInstance: transporteInstance]
    }

    def update(Long id, Long version) {
        def transporteInstance = Transporte.get(id)
        if (!transporteInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'transporte.label', default: 'Transporte'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (transporteInstance.version > version) {
                transporteInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'transporte.label', default: 'Transporte')] as Object[],
                          "Another user has updated this Transporte while you were editing")
                render(view: "edit", model: [transporteInstance: transporteInstance])
                return
            }
        }

        transporteInstance.properties = params

        if (!transporteInstance.save(flush: true)) {
            render(view: "edit", model: [transporteInstance: transporteInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'transporte.label', default: 'Transporte'), transporteInstance.id])
        redirect(action: "show", id: transporteInstance.id)
    }

    def delete(Long id) {
        def transporteInstance = Transporte.get(id)
        if (!transporteInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'transporte.label', default: 'Transporte'), id])
            redirect(action: "list")
            return
        }

        try {
            transporteInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'transporte.label', default: 'Transporte'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'transporte.label', default: 'Transporte'), id])
            redirect(action: "show", id: id)
        }
    }
}
