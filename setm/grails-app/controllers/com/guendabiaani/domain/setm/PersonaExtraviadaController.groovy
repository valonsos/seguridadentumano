package com.guendabiaani.domain.setm

import org.springframework.dao.DataIntegrityViolationException

class PersonaExtraviadaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [personaExtraviadaInstanceList: PersonaExtraviada.list(params), personaExtraviadaInstanceTotal: PersonaExtraviada.count()]
    }

    def create() {
        [personaExtraviadaInstance: new PersonaExtraviada(params)]
    }

    def save() {
        def personaExtraviadaInstance = new PersonaExtraviada(params)
        if (!personaExtraviadaInstance.save(flush: true)) {
            render(view: "create", model: [personaExtraviadaInstance: personaExtraviadaInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'personaExtraviada.label', default: 'PersonaExtraviada'), personaExtraviadaInstance.id])
        redirect(action: "show", id: personaExtraviadaInstance.id)
    }

    def show(Long id) {
        def personaExtraviadaInstance = PersonaExtraviada.get(id)
        if (!personaExtraviadaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'personaExtraviada.label', default: 'PersonaExtraviada'), id])
            redirect(action: "list")
            return
        }

        [personaExtraviadaInstance: personaExtraviadaInstance]
    }

    def edit(Long id) {
        def personaExtraviadaInstance = PersonaExtraviada.get(id)
        if (!personaExtraviadaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'personaExtraviada.label', default: 'PersonaExtraviada'), id])
            redirect(action: "list")
            return
        }

        [personaExtraviadaInstance: personaExtraviadaInstance]
    }

    def update(Long id, Long version) {
        def personaExtraviadaInstance = PersonaExtraviada.get(id)
        if (!personaExtraviadaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'personaExtraviada.label', default: 'PersonaExtraviada'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (personaExtraviadaInstance.version > version) {
                personaExtraviadaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'personaExtraviada.label', default: 'PersonaExtraviada')] as Object[],
                          "Another user has updated this PersonaExtraviada while you were editing")
                render(view: "edit", model: [personaExtraviadaInstance: personaExtraviadaInstance])
                return
            }
        }

        personaExtraviadaInstance.properties = params

        if (!personaExtraviadaInstance.save(flush: true)) {
            render(view: "edit", model: [personaExtraviadaInstance: personaExtraviadaInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'personaExtraviada.label', default: 'PersonaExtraviada'), personaExtraviadaInstance.id])
        redirect(action: "show", id: personaExtraviadaInstance.id)
    }

    def delete(Long id) {
        def personaExtraviadaInstance = PersonaExtraviada.get(id)
        if (!personaExtraviadaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'personaExtraviada.label', default: 'PersonaExtraviada'), id])
            redirect(action: "list")
            return
        }

        try {
            personaExtraviadaInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'personaExtraviada.label', default: 'PersonaExtraviada'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'personaExtraviada.label', default: 'PersonaExtraviada'), id])
            redirect(action: "show", id: id)
        }
    }
}
