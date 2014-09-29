package entuliga.adn

import org.bson.types.ObjectId

class Team {

    ObjectId id
    String teamId
    String abbreviation
    boolean active
    String firstName
    String lastName
    String alias
    String federation
    String siteName
    String city
    String state
    Date initDate

    static constraints = {
        teamId nullable: false
        abbreviation nullable: false
        active nullable: false
        firstName nullable: false
        lastName nullable:true, blank:false
        alias nullable:true, blank:false
        federation nullable: false
        siteName nullable:true, blank:false
        city nullable: false
        state nullable: false
        initDate nullable: true, blank:false

    }

    String toString(){
        return "${teamId}"
    }
}
