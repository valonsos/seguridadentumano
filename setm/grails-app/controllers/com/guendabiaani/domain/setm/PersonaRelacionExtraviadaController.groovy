package com.guendabiaani.domain.setm

import org.springframework.dao.DataIntegrityViolationException

class PersonaRelacionExtraviadaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [personaRelacionExtraviadaInstanceList: PersonaRelacionExtraviada.list(params), personaRelacionExtraviadaInstanceTotal: PersonaRelacionExtraviada.count()]
    }

    def create() {
        [personaRelacionExtraviadaInstance: new PersonaRelacionExtraviada(params)]
    }

    def save() {
        def personaRelacionExtraviadaInstance = new PersonaRelacionExtraviada(params)
        if (!personaRelacionExtraviadaInstance.save(flush: true)) {
            render(view: "create", model: [personaRelacionExtraviadaInstance: personaRelacionExtraviadaInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'personaRelacionExtraviada.label', default: 'PersonaRelacionExtraviada'), personaRelacionExtraviadaInstance.id])
        redirect(action: "show", id: personaRelacionExtraviadaInstance.id)
    }

    def show(Long id) {
        def personaRelacionExtraviadaInstance = PersonaRelacionExtraviada.get(id)
        if (!personaRelacionExtraviadaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'personaRelacionExtraviada.label', default: 'PersonaRelacionExtraviada'), id])
            redirect(action: "list")
            return
        }

        [personaRelacionExtraviadaInstance: personaRelacionExtraviadaInstance]
    }

    def edit(Long id) {
        def personaRelacionExtraviadaInstance = PersonaRelacionExtraviada.get(id)
        if (!personaRelacionExtraviadaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'personaRelacionExtraviada.label', default: 'PersonaRelacionExtraviada'), id])
            redirect(action: "list")
            return
        }

        [personaRelacionExtraviadaInstance: personaRelacionExtraviadaInstance]
    }

    def update(Long id, Long version) {
        def personaRelacionExtraviadaInstance = PersonaRelacionExtraviada.get(id)
        if (!personaRelacionExtraviadaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'personaRelacionExtraviada.label', default: 'PersonaRelacionExtraviada'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (personaRelacionExtraviadaInstance.version > version) {
                personaRelacionExtraviadaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'personaRelacionExtraviada.label', default: 'PersonaRelacionExtraviada')] as Object[],
                          "Another user has updated this PersonaRelacionExtraviada while you were editing")
                render(view: "edit", model: [personaRelacionExtraviadaInstance: personaRelacionExtraviadaInstance])
                return
            }
        }

        personaRelacionExtraviadaInstance.properties = params

        if (!personaRelacionExtraviadaInstance.save(flush: true)) {
            render(view: "edit", model: [personaRelacionExtraviadaInstance: personaRelacionExtraviadaInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'personaRelacionExtraviada.label', default: 'PersonaRelacionExtraviada'), personaRelacionExtraviadaInstance.id])
        redirect(action: "show", id: personaRelacionExtraviadaInstance.id)
    }

    def delete(Long id) {
        def personaRelacionExtraviadaInstance = PersonaRelacionExtraviada.get(id)
        if (!personaRelacionExtraviadaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'personaRelacionExtraviada.label', default: 'PersonaRelacionExtraviada'), id])
            redirect(action: "list")
            return
        }

        try {
            personaRelacionExtraviadaInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'personaRelacionExtraviada.label', default: 'PersonaRelacionExtraviada'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'personaRelacionExtraviada.label', default: 'PersonaRelacionExtraviada'), id])
            redirect(action: "show", id: id)
        }
    }
}
