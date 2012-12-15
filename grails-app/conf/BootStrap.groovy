import org.hub.gblog.User
import org.hub.gblog.Post

class BootStrap {

    def init = { servletContext ->
        if (!User.count()) {
            def iam = new User(login: 'dan', pass: '1')
            iam.save(failOnError: true)

            def p1 = new Post(author: iam, body: 'Hello world', title: 'Hello world')
            p1.save(failOnError: true)
        }
    }
    def destroy = {
    }
}
