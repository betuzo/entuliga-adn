
<%@ page import="entuliga.adn.League" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'league.label', default: 'League')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-league" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-league" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list league">
			
				<g:if test="${leagueInstance?.abbreviation}">
				<li class="fieldcontain">
					<span id="abbreviation-label" class="property-label"><g:message code="league.abbreviation.label" default="Abbreviation" /></span>
					
						<span class="property-value" aria-labelledby="abbreviation-label"><g:fieldValue bean="${leagueInstance}" field="abbreviation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${leagueInstance?.active}">
				<li class="fieldcontain">
					<span id="active-label" class="property-label"><g:message code="league.active.label" default="Active" /></span>
					
						<span class="property-value" aria-labelledby="active-label"><g:formatBoolean boolean="${leagueInstance?.active}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${leagueInstance?.endDate}">
				<li class="fieldcontain">
					<span id="endDate-label" class="property-label"><g:message code="league.endDate.label" default="End Date" /></span>
					
						<span class="property-value" aria-labelledby="endDate-label"><g:fieldValue bean="${leagueInstance}" field="endDate"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${leagueInstance?.initDate}">
				<li class="fieldcontain">
					<span id="initDate-label" class="property-label"><g:message code="league.initDate.label" default="Init Date" /></span>
					
						<span class="property-value" aria-labelledby="initDate-label"><g:fieldValue bean="${leagueInstance}" field="initDate"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${leagueInstance?.leagueId}">
				<li class="fieldcontain">
					<span id="leagueId-label" class="property-label"><g:message code="league.leagueId.label" default="League Id" /></span>
					
						<span class="property-value" aria-labelledby="leagueId-label"><g:fieldValue bean="${leagueInstance}" field="leagueId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${leagueInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="league.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${leagueInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${leagueInstance?.organize}">
				<li class="fieldcontain">
					<span id="organize-label" class="property-label"><g:message code="league.organize.label" default="Organize" /></span>
					
						<span class="property-value" aria-labelledby="organize-label"><g:fieldValue bean="${leagueInstance}" field="organize"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${leagueInstance?.teams}">
				<li class="fieldcontain">
					<span id="teams-label" class="property-label"><g:message code="league.teams.label" default="Teams" /></span>
					
						<g:each in="${leagueInstance.teams}" var="t">
						<span class="property-value" aria-labelledby="teams-label"><g:link controller="teamLeague" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:leagueInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${leagueInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
