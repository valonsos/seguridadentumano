package com.guendabiaani.domain.setm

import org.springframework.dao.DataIntegrityViolationException

class PersonaDenuncianteController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [personaDenuncianteInstanceList: PersonaDenunciante.list(params), personaDenuncianteInstanceTotal: PersonaDenunciante.count()]
    }

    def create() {
        [personaDenuncianteInstance: new PersonaDenunciante(params)]
    }

    def save() {
        def personaDenuncianteInstance = new PersonaDenunciante(params)
        if (!personaDenuncianteInstance.save(flush: true)) {
            render(view: "create", model: [personaDenuncianteInstance: personaDenuncianteInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'personaDenunciante.label', default: 'PersonaDenunciante'), personaDenuncianteInstance.id])
        redirect(action: "show", id: personaDenuncianteInstance.id)
    }

    def show(Long id) {
        def personaDenuncianteInstance = PersonaDenunciante.get(id)
        if (!personaDenuncianteInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'personaDenunciante.label', default: 'PersonaDenunciante'), id])
            redirect(action: "list")
            return
        }

        [personaDenuncianteInstance: personaDenuncianteInstance]
    }

    def edit(Long id) {
        def personaDenuncianteInstance = PersonaDenunciante.get(id)
        if (!personaDenuncianteInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'personaDenunciante.label', default: 'PersonaDenunciante'), id])
            redirect(action: "list")
            return
        }

        [personaDenuncianteInstance: personaDenuncianteInstance]
    }

    def update(Long id, Long version) {
        def personaDenuncianteInstance = PersonaDenunciante.get(id)
        if (!personaDenuncianteInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'personaDenunciante.label', default: 'PersonaDenunciante'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (personaDenuncianteInstance.version > version) {
                personaDenuncianteInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'personaDenunciante.label', default: 'PersonaDenunciante')] as Object[],
                          "Another user has updated this PersonaDenunciante while you were editing")
                render(view: "edit", model: [personaDenuncianteInstance: personaDenuncianteInstance])
                return
            }
        }

        personaDenuncianteInstance.properties = params

        if (!personaDenuncianteInstance.save(flush: true)) {
            render(view: "edit", model: [personaDenuncianteInstance: personaDenuncianteInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'personaDenunciante.label', default: 'PersonaDenunciante'), personaDenuncianteInstance.id])
        redirect(action: "show", id: personaDenuncianteInstance.id)
    }

    def delete(Long id) {
        def personaDenuncianteInstance = PersonaDenunciante.get(id)
        if (!personaDenuncianteInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'personaDenunciante.label', default: 'PersonaDenunciante'), id])
            redirect(action: "list")
            return
        }

        try {
            personaDenuncianteInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'personaDenunciante.label', default: 'PersonaDenunciante'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'personaDenunciante.label', default: 'PersonaDenunciante'), id])
            redirect(action: "show", id: id)
        }
    }
}
