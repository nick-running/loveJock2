package lovejock2

class Hashtag {

    String name
    static hasMany = [jocks: Jock]
    static belongsTo = Jock
    static constraints = {
    }
}
