<%@ page import="entuliga.adn.TeamLeague" %>



<div class="fieldcontain ${hasErrors(bean: teamLeagueInstance, field: 'group', 'error')} ">
	<label for="group">
		<g:message code="teamLeague.group.label" default="Group" />
		
	</label>
	<g:textField name="group" value="${teamLeagueInstance?.group}" />

</div>

<div class="fieldcontain ${hasErrors(bean: teamLeagueInstance, field: 'league', 'error')} ">
	<label for="league">
		<g:message code="teamLeague.league.label" default="League" />
		
	</label>
	<g:select id="league" name="league.id" from="${entuliga.adn.League.list()}" optionKey="id" required="" value="${teamLeagueInstance?.league?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: teamLeagueInstance, field: 'team', 'error')} ">
	<label for="team">
		<g:message code="teamLeague.team.label" default="Team" />
		
	</label>
	<g:select id="team" name="team.id" from="${entuliga.adn.Team.list()}" optionKey="id" required="" value="${teamLeagueInstance?.team?.id}" class="many-to-one"/>

</div>

