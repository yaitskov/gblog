

class AuthenticationFilters {

    def filters = {
        all(controller:'.*', regex: true, action: '(update|delete|save)') {
            before = {
                if (!session.user) {
                    redirect(controller: 'user', action: 'login')
                    return false
                }
            }
            after = { Map model ->

            }
            afterView = { Exception e ->

            }
        }
    }
}
