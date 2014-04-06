package com.guendabiaani.domain.setm

import org.springframework.dao.DataIntegrityViolationException

class ParentescoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [parentescoInstanceList: Parentesco.list(params), parentescoInstanceTotal: Parentesco.count()]
    }

    def create() {
        [parentescoInstance: new Parentesco(params)]
    }

    def save() {
        def parentescoInstance = new Parentesco(params)
        if (!parentescoInstance.save(flush: true)) {
            render(view: "create", model: [parentescoInstance: parentescoInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'parentesco.label', default: 'Parentesco'), parentescoInstance.id])
        redirect(action: "show", id: parentescoInstance.id)
    }

    def show(Long id) {
        def parentescoInstance = Parentesco.get(id)
        if (!parentescoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'parentesco.label', default: 'Parentesco'), id])
            redirect(action: "list")
            return
        }

        [parentescoInstance: parentescoInstance]
    }

    def edit(Long id) {
        def parentescoInstance = Parentesco.get(id)
        if (!parentescoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'parentesco.label', default: 'Parentesco'), id])
            redirect(action: "list")
            return
        }

        [parentescoInstance: parentescoInstance]
    }

    def update(Long id, Long version) {
        def parentescoInstance = Parentesco.get(id)
        if (!parentescoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'parentesco.label', default: 'Parentesco'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (parentescoInstance.version > version) {
                parentescoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'parentesco.label', default: 'Parentesco')] as Object[],
                          "Another user has updated this Parentesco while you were editing")
                render(view: "edit", model: [parentescoInstance: parentescoInstance])
                return
            }
        }

        parentescoInstance.properties = params

        if (!parentescoInstance.save(flush: true)) {
            render(view: "edit", model: [parentescoInstance: parentescoInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'parentesco.label', default: 'Parentesco'), parentescoInstance.id])
        redirect(action: "show", id: parentescoInstance.id)
    }

    def delete(Long id) {
        def parentescoInstance = Parentesco.get(id)
        if (!parentescoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'parentesco.label', default: 'Parentesco'), id])
            redirect(action: "list")
            return
        }

        try {
            parentescoInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'parentesco.label', default: 'Parentesco'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'parentesco.label', default: 'Parentesco'), id])
            redirect(action: "show", id: id)
        }
    }
}
