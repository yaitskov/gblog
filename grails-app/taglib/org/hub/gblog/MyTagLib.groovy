package org.hub.gblog

class MyTagLib {

    def simple = {
        attrs, body ->
        out << "HELLO WORLD"
    }
}
