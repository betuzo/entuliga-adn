package entuliga.adn

import org.bson.types.ObjectId

class League {

    ObjectId id
    String leagueId
    String abbreviation
    boolean active
    String name
    String organize
    String initDate
    String endDate
    static hasMany = [teams:TeamLeague]

    static constraints = {

    }

    String toString(){
        return "${leagueId}"
    }
}
