package com.guendabiaani.domain.setm

import org.springframework.dao.DataIntegrityViolationException

class ColorOjosController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [colorOjosInstanceList: ColorOjos.list(params), colorOjosInstanceTotal: ColorOjos.count()]
    }

    def create() {
        [colorOjosInstance: new ColorOjos(params)]
    }

    def save() {
        def colorOjosInstance = new ColorOjos(params)
        if (!colorOjosInstance.save(flush: true)) {
            render(view: "create", model: [colorOjosInstance: colorOjosInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'colorOjos.label', default: 'ColorOjos'), colorOjosInstance.id])
        redirect(action: "show", id: colorOjosInstance.id)
    }

    def show(Long id) {
        def colorOjosInstance = ColorOjos.get(id)
        if (!colorOjosInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'colorOjos.label', default: 'ColorOjos'), id])
            redirect(action: "list")
            return
        }

        [colorOjosInstance: colorOjosInstance]
    }

    def edit(Long id) {
        def colorOjosInstance = ColorOjos.get(id)
        if (!colorOjosInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'colorOjos.label', default: 'ColorOjos'), id])
            redirect(action: "list")
            return
        }

        [colorOjosInstance: colorOjosInstance]
    }

    def update(Long id, Long version) {
        def colorOjosInstance = ColorOjos.get(id)
        if (!colorOjosInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'colorOjos.label', default: 'ColorOjos'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (colorOjosInstance.version > version) {
                colorOjosInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'colorOjos.label', default: 'ColorOjos')] as Object[],
                          "Another user has updated this ColorOjos while you were editing")
                render(view: "edit", model: [colorOjosInstance: colorOjosInstance])
                return
            }
        }

        colorOjosInstance.properties = params

        if (!colorOjosInstance.save(flush: true)) {
            render(view: "edit", model: [colorOjosInstance: colorOjosInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'colorOjos.label', default: 'ColorOjos'), colorOjosInstance.id])
        redirect(action: "show", id: colorOjosInstance.id)
    }

    def delete(Long id) {
        def colorOjosInstance = ColorOjos.get(id)
        if (!colorOjosInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'colorOjos.label', default: 'ColorOjos'), id])
            redirect(action: "list")
            return
        }

        try {
            colorOjosInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'colorOjos.label', default: 'ColorOjos'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'colorOjos.label', default: 'ColorOjos'), id])
            redirect(action: "show", id: id)
        }
    }
}
