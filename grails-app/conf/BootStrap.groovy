import entuliga.adn.*

class BootStrap {

    def init = { servletContext ->
        log.info("BootStrap -> init")
        def worldCup = League.findByLeagueId('mundial-baloncesto-2014') ?: new League(
                leagueId: 'mundial-baloncesto-2014',
                abbreviation: 'España 2014',
                active: true,
                name: 'Campeonato Mundial de Baloncesto 2014',
                organize: 'FIBA',
                initDate: '2014-08-30',
                endDate: '2014-09-14'
        ).save(flush:true)

        def argentina = Team.findByTeamId('argentina') ?: new Team(
                teamId: "argentina",
                abbreviation: "ARG",
                active: true,
                firstName: "Argentina",
                lastName: "",
                alias: "El alma",
                federation: "FIBA Américas",
                siteName: "",
                city: "Buenos Aires",
                state: "Buenos Aires"
        ).save(flush:true)

        def wcarg = TeamLeague.findByLeagueAndTeam(worldCup, argentina) ?: new TeamLeague(
                league: worldCup,
                team: argentina,
                group: 'B'
        ).save(flush:true)

    }
    def destroy = {
    }
}
