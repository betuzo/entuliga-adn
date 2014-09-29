package entuliga.adn

import org.bson.types.ObjectId

class TeamLeague {
    ObjectId id
    League league
    Team team
    String group

    static constraints = {
    }

    String toString(){
        return "${league} - ${team}"
    }
}
