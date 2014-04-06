package com.guendabiaani.domain.setm

import org.springframework.dao.DataIntegrityViolationException

class ColorCabelloController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [colorCabelloInstanceList: ColorCabello.list(params), colorCabelloInstanceTotal: ColorCabello.count()]
    }

    def create() {
        [colorCabelloInstance: new ColorCabello(params)]
    }

    def save() {
        def colorCabelloInstance = new ColorCabello(params)
        if (!colorCabelloInstance.save(flush: true)) {
            render(view: "create", model: [colorCabelloInstance: colorCabelloInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'colorCabello.label', default: 'ColorCabello'), colorCabelloInstance.id])
        redirect(action: "show", id: colorCabelloInstance.id)
    }

    def show(Long id) {
        def colorCabelloInstance = ColorCabello.get(id)
        if (!colorCabelloInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'colorCabello.label', default: 'ColorCabello'), id])
            redirect(action: "list")
            return
        }

        [colorCabelloInstance: colorCabelloInstance]
    }

    def edit(Long id) {
        def colorCabelloInstance = ColorCabello.get(id)
        if (!colorCabelloInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'colorCabello.label', default: 'ColorCabello'), id])
            redirect(action: "list")
            return
        }

        [colorCabelloInstance: colorCabelloInstance]
    }

    def update(Long id, Long version) {
        def colorCabelloInstance = ColorCabello.get(id)
        if (!colorCabelloInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'colorCabello.label', default: 'ColorCabello'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (colorCabelloInstance.version > version) {
                colorCabelloInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'colorCabello.label', default: 'ColorCabello')] as Object[],
                          "Another user has updated this ColorCabello while you were editing")
                render(view: "edit", model: [colorCabelloInstance: colorCabelloInstance])
                return
            }
        }

        colorCabelloInstance.properties = params

        if (!colorCabelloInstance.save(flush: true)) {
            render(view: "edit", model: [colorCabelloInstance: colorCabelloInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'colorCabello.label', default: 'ColorCabello'), colorCabelloInstance.id])
        redirect(action: "show", id: colorCabelloInstance.id)
    }

    def delete(Long id) {
        def colorCabelloInstance = ColorCabello.get(id)
        if (!colorCabelloInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'colorCabello.label', default: 'ColorCabello'), id])
            redirect(action: "list")
            return
        }

        try {
            colorCabelloInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'colorCabello.label', default: 'ColorCabello'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'colorCabello.label', default: 'ColorCabello'), id])
            redirect(action: "show", id: id)
        }
    }
}
