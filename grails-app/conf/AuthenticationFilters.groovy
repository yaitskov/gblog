

class AuthenticationFilters {

    def filters = {
        all(controller:'*', action:'update') {
            before = {

            }
            after = { Map model ->

            }
            afterView = { Exception e ->

            }
        }
    }
}
