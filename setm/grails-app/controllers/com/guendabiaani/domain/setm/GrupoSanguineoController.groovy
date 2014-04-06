package com.guendabiaani.domain.setm

import org.springframework.dao.DataIntegrityViolationException

class GrupoSanguineoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [grupoSanguineoInstanceList: GrupoSanguineo.list(params), grupoSanguineoInstanceTotal: GrupoSanguineo.count()]
    }

    def create() {
        [grupoSanguineoInstance: new GrupoSanguineo(params)]
    }

    def save() {
        def grupoSanguineoInstance = new GrupoSanguineo(params)
        if (!grupoSanguineoInstance.save(flush: true)) {
            render(view: "create", model: [grupoSanguineoInstance: grupoSanguineoInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'grupoSanguineo.label', default: 'GrupoSanguineo'), grupoSanguineoInstance.id])
        redirect(action: "show", id: grupoSanguineoInstance.id)
    }

    def show(Long id) {
        def grupoSanguineoInstance = GrupoSanguineo.get(id)
        if (!grupoSanguineoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'grupoSanguineo.label', default: 'GrupoSanguineo'), id])
            redirect(action: "list")
            return
        }

        [grupoSanguineoInstance: grupoSanguineoInstance]
    }

    def edit(Long id) {
        def grupoSanguineoInstance = GrupoSanguineo.get(id)
        if (!grupoSanguineoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'grupoSanguineo.label', default: 'GrupoSanguineo'), id])
            redirect(action: "list")
            return
        }

        [grupoSanguineoInstance: grupoSanguineoInstance]
    }

    def update(Long id, Long version) {
        def grupoSanguineoInstance = GrupoSanguineo.get(id)
        if (!grupoSanguineoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'grupoSanguineo.label', default: 'GrupoSanguineo'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (grupoSanguineoInstance.version > version) {
                grupoSanguineoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'grupoSanguineo.label', default: 'GrupoSanguineo')] as Object[],
                          "Another user has updated this GrupoSanguineo while you were editing")
                render(view: "edit", model: [grupoSanguineoInstance: grupoSanguineoInstance])
                return
            }
        }

        grupoSanguineoInstance.properties = params

        if (!grupoSanguineoInstance.save(flush: true)) {
            render(view: "edit", model: [grupoSanguineoInstance: grupoSanguineoInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'grupoSanguineo.label', default: 'GrupoSanguineo'), grupoSanguineoInstance.id])
        redirect(action: "show", id: grupoSanguineoInstance.id)
    }

    def delete(Long id) {
        def grupoSanguineoInstance = GrupoSanguineo.get(id)
        if (!grupoSanguineoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'grupoSanguineo.label', default: 'GrupoSanguineo'), id])
            redirect(action: "list")
            return
        }

        try {
            grupoSanguineoInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'grupoSanguineo.label', default: 'GrupoSanguineo'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'grupoSanguineo.label', default: 'GrupoSanguineo'), id])
            redirect(action: "show", id: id)
        }
    }
}
