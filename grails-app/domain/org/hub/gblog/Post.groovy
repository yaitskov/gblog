package org.hub.gblog

class Post {

    static constraints = {
    }

    String title
    Date created = new Date()
    String body
    User author
}
