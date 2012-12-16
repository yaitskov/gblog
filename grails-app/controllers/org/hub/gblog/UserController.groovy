package org.hub.gblog

import javax.validation.ValidationException

class UserController {

    def login = {
        [userInstance: new User()]
    }

    def sigin = {
        if (session.user) {
            redirect(controller: 'post')
        }
        def user = User.findByLogin(params.login)
        if (!user || user.pass != params.pass) {
            flash.message = message(code: 'error.login')
            render(view: 'login', model: [userInstance: new User(params)])
        } else {
            session.user = user
            redirect(controller: 'post')
        }
    }

    def logout = {
        session.user = null
        redirect(controller: 'post')
    }
}
