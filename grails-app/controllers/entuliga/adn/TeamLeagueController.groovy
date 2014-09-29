package entuliga.adn


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TeamLeagueController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond TeamLeague.list(params), model: [teamLeagueInstanceCount: TeamLeague.count()]
    }

    def show(TeamLeague teamLeagueInstance) {
        respond teamLeagueInstance
    }

    def create() {
        respond new TeamLeague(params)
    }

    @Transactional
    def save(TeamLeague teamLeagueInstance) {
        if (teamLeagueInstance == null) {
            notFound()
            return
        }

        if (teamLeagueInstance.hasErrors()) {
            respond teamLeagueInstance.errors, view: 'create'
            return
        }

        teamLeagueInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'teamLeague.label', default: 'TeamLeague'), teamLeagueInstance.id])
                redirect teamLeagueInstance
            }
            '*' { respond teamLeagueInstance, [status: CREATED] }
        }
    }

    def edit(TeamLeague teamLeagueInstance) {
        respond teamLeagueInstance
    }

    @Transactional
    def update(TeamLeague teamLeagueInstance) {
        if (teamLeagueInstance == null) {
            notFound()
            return
        }

        if (teamLeagueInstance.hasErrors()) {
            respond teamLeagueInstance.errors, view: 'edit'
            return
        }

        teamLeagueInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'TeamLeague.label', default: 'TeamLeague'), teamLeagueInstance.id])
                redirect teamLeagueInstance
            }
            '*' { respond teamLeagueInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(TeamLeague teamLeagueInstance) {

        if (teamLeagueInstance == null) {
            notFound()
            return
        }

        teamLeagueInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'TeamLeague.label', default: 'TeamLeague'), teamLeagueInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'teamLeague.label', default: 'TeamLeague'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
