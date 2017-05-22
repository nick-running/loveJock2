package lovejock2

import grails.converters.JSON

class JockController {

    def index() {
//        new Author(name:"Stephen King")
//                .addToBooks(new Book(name:"The Stand"))
//                .addToBooks(new Book(name:"The Shining"))
//                .save()
//        new Jock(name: 'j1').save()
//        Jock j1 = Jock.get(1)
//        j1.addToHashtag(new Hashtag(name: 'forest'))
//        new Hashtag(name: 'beach').save()
//        Hashtag h2 = Hashtag.get(2)
//        j1.addToHashtag(h2)
//        j1.save()
//        def h =  Hashtag.findAllByName('forest')
        [n: '']
    }

    def buildHumor() {
        println 123
        [n: '']
    }

    def addJock() {
        def m = [:]
        def jock = new Jock(name: params.jock).save()
        if (jock) {
            m.status = 'success'
        }else{
            m.status = 'failed'
        }
        render m as JSON
    }

    def list() {
        def jocks = Jock.list(sort: 'id', order: 'desc')
        render jocks as JSON
    }

    def delJock() {
        def m = [:]
        try {
            def j = Jock.get(params.id)
            j.delete()
            m.status = 'success'
        } catch (Exception e) {
            m.status = 'failed'
        }
        render m as JSON
    }
    def setDone() {
        def m = [:]
        try {
            def j = Jock.get(params.id)
            def status = params.status
            if (status=="1") {
                j.isDone = 0
            }else{
                j.isDone = 1
            }
            m.status = 'success'
        } catch (Exception e) {
            m.status = 'failed'
        }
        render m as JSON
    }
}
