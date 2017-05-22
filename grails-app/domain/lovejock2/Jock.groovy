package lovejock2

class Jock {

    String name
    Integer isDone = 0
    static hasMany = [hashtag: Hashtag]
    static constraints = {
    }
}
