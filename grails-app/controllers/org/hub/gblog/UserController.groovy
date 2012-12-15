package org.hub.gblog

import javax.validation.ValidationException

class UserController {

    def login = {
        try {
            if (session.user) {
                throw new ValidationException("already sigin")
            }
            if (!params.login) {
                return [ login: '' ]
            }
            def user = User.findByLogin(params.login)
            if (!user || user.pass != params.pass) {
                throw new ValidationException("login/password invalid")
            }
            session.user = user
            redirect(controller: 'post')
        } catch (ValidationException e) {
            [message: e.message] + params
        }
    }

    def logout = {
        session.user = null
        redirect(controller: 'post')
    }
}
