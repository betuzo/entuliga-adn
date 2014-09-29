<%@ page import="entuliga.adn.League" %>



<div class="fieldcontain ${hasErrors(bean: leagueInstance, field: 'abbreviation', 'error')} ">
	<label for="abbreviation">
		<g:message code="league.abbreviation.label" default="Abbreviation" />
		
	</label>
	<g:textField name="abbreviation" value="${leagueInstance?.abbreviation}" />

</div>

<div class="fieldcontain ${hasErrors(bean: leagueInstance, field: 'active', 'error')} ">
	<label for="active">
		<g:message code="league.active.label" default="Active" />
		
	</label>
	<g:checkBox name="active" value="${leagueInstance?.active}" />

</div>

<div class="fieldcontain ${hasErrors(bean: leagueInstance, field: 'endDate', 'error')} ">
	<label for="endDate">
		<g:message code="league.endDate.label" default="End Date" />
		
	</label>
	<g:textField name="endDate" value="${leagueInstance?.endDate}" />

</div>

<div class="fieldcontain ${hasErrors(bean: leagueInstance, field: 'initDate', 'error')} ">
	<label for="initDate">
		<g:message code="league.initDate.label" default="Init Date" />
		
	</label>
	<g:textField name="initDate" value="${leagueInstance?.initDate}" />

</div>

<div class="fieldcontain ${hasErrors(bean: leagueInstance, field: 'leagueId', 'error')} ">
	<label for="leagueId">
		<g:message code="league.leagueId.label" default="League Id" />
		
	</label>
	<g:textField name="leagueId" value="${leagueInstance?.leagueId}" />

</div>

<div class="fieldcontain ${hasErrors(bean: leagueInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="league.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${leagueInstance?.name}" />

</div>

<div class="fieldcontain ${hasErrors(bean: leagueInstance, field: 'organize', 'error')} ">
	<label for="organize">
		<g:message code="league.organize.label" default="Organize" />
		
	</label>
	<g:textField name="organize" value="${leagueInstance?.organize}" />

</div>

<div class="fieldcontain ${hasErrors(bean: leagueInstance, field: 'teams', 'error')} ">
	<label for="teams">
		<g:message code="league.teams.label" default="Teams" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${leagueInstance?.teams?}" var="t">
    <li><g:link controller="teamLeague" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="teamLeague" action="create" params="['league.id': leagueInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'teamLeague.label', default: 'TeamLeague')])}</g:link>
</li>
</ul>


</div>

