package com.guendabiaani.domain.setm

import org.springframework.dao.DataIntegrityViolationException

class CatologoDelitosController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [catologoDelitosInstanceList: CatologoDelitos.list(params), catologoDelitosInstanceTotal: CatologoDelitos.count()]
    }

    def create() {
        [catologoDelitosInstance: new CatologoDelitos(params)]
    }

    def save() {
        def catologoDelitosInstance = new CatologoDelitos(params)
        if (!catologoDelitosInstance.save(flush: true)) {
            render(view: "create", model: [catologoDelitosInstance: catologoDelitosInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'catologoDelitos.label', default: 'CatologoDelitos'), catologoDelitosInstance.id])
        redirect(action: "show", id: catologoDelitosInstance.id)
    }

    def show(Long id) {
        def catologoDelitosInstance = CatologoDelitos.get(id)
        if (!catologoDelitosInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'catologoDelitos.label', default: 'CatologoDelitos'), id])
            redirect(action: "list")
            return
        }

        [catologoDelitosInstance: catologoDelitosInstance]
    }

    def edit(Long id) {
        def catologoDelitosInstance = CatologoDelitos.get(id)
        if (!catologoDelitosInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'catologoDelitos.label', default: 'CatologoDelitos'), id])
            redirect(action: "list")
            return
        }

        [catologoDelitosInstance: catologoDelitosInstance]
    }

    def update(Long id, Long version) {
        def catologoDelitosInstance = CatologoDelitos.get(id)
        if (!catologoDelitosInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'catologoDelitos.label', default: 'CatologoDelitos'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (catologoDelitosInstance.version > version) {
                catologoDelitosInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'catologoDelitos.label', default: 'CatologoDelitos')] as Object[],
                          "Another user has updated this CatologoDelitos while you were editing")
                render(view: "edit", model: [catologoDelitosInstance: catologoDelitosInstance])
                return
            }
        }

        catologoDelitosInstance.properties = params

        if (!catologoDelitosInstance.save(flush: true)) {
            render(view: "edit", model: [catologoDelitosInstance: catologoDelitosInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'catologoDelitos.label', default: 'CatologoDelitos'), catologoDelitosInstance.id])
        redirect(action: "show", id: catologoDelitosInstance.id)
    }

    def delete(Long id) {
        def catologoDelitosInstance = CatologoDelitos.get(id)
        if (!catologoDelitosInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'catologoDelitos.label', default: 'CatologoDelitos'), id])
            redirect(action: "list")
            return
        }

        try {
            catologoDelitosInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'catologoDelitos.label', default: 'CatologoDelitos'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'catologoDelitos.label', default: 'CatologoDelitos'), id])
            redirect(action: "show", id: id)
        }
    }
}
