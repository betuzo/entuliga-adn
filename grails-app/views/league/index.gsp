
<%@ page import="entuliga.adn.League" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'league.label', default: 'League')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-league" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-league" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="abbreviation" title="${message(code: 'league.abbreviation.label', default: 'Abbreviation')}" />
					
						<g:sortableColumn property="active" title="${message(code: 'league.active.label', default: 'Active')}" />
					
						<g:sortableColumn property="endDate" title="${message(code: 'league.endDate.label', default: 'End Date')}" />
					
						<g:sortableColumn property="initDate" title="${message(code: 'league.initDate.label', default: 'Init Date')}" />
					
						<g:sortableColumn property="leagueId" title="${message(code: 'league.leagueId.label', default: 'League Id')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'league.name.label', default: 'Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${leagueInstanceList}" status="i" var="leagueInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${leagueInstance.id}">${fieldValue(bean: leagueInstance, field: "abbreviation")}</g:link></td>
					
						<td><g:formatBoolean boolean="${leagueInstance.active}" /></td>
					
						<td>${fieldValue(bean: leagueInstance, field: "endDate")}</td>
					
						<td>${fieldValue(bean: leagueInstance, field: "initDate")}</td>
					
						<td>${fieldValue(bean: leagueInstance, field: "leagueId")}</td>
					
						<td>${fieldValue(bean: leagueInstance, field: "name")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${leagueInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
