
<%@ page import="entuliga.adn.TeamLeague" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'teamLeague.label', default: 'TeamLeague')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-teamLeague" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-teamLeague" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="group" title="${message(code: 'teamLeague.group.label', default: 'Group')}" />
					
						<th><g:message code="teamLeague.league.label" default="League" /></th>
					
						<th><g:message code="teamLeague.team.label" default="Team" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${teamLeagueInstanceList}" status="i" var="teamLeagueInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${teamLeagueInstance.id}">${fieldValue(bean: teamLeagueInstance, field: "group")}</g:link></td>
					
						<td>${fieldValue(bean: teamLeagueInstance, field: "league")}</td>
					
						<td>${fieldValue(bean: teamLeagueInstance, field: "team")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${teamLeagueInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
