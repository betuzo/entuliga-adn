
<%@ page import="entuliga.adn.Team" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'team.label', default: 'Team')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-team" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-team" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="abbreviation" title="${message(code: 'team.abbreviation.label', default: 'Abbreviation')}" />
					
						<g:sortableColumn property="active" title="${message(code: 'team.active.label', default: 'Active')}" />
					
						<g:sortableColumn property="alias" title="${message(code: 'team.alias.label', default: 'Alias')}" />
					
						<g:sortableColumn property="city" title="${message(code: 'team.city.label', default: 'City')}" />
					
						<g:sortableColumn property="federation" title="${message(code: 'team.federation.label', default: 'Federation')}" />
					
						<g:sortableColumn property="firstName" title="${message(code: 'team.firstName.label', default: 'First Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${teamInstanceList}" status="i" var="teamInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${teamInstance.id}">${fieldValue(bean: teamInstance, field: "abbreviation")}</g:link></td>
					
						<td><g:formatBoolean boolean="${teamInstance.active}" /></td>
					
						<td>${fieldValue(bean: teamInstance, field: "alias")}</td>
					
						<td>${fieldValue(bean: teamInstance, field: "city")}</td>
					
						<td>${fieldValue(bean: teamInstance, field: "federation")}</td>
					
						<td>${fieldValue(bean: teamInstance, field: "firstName")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${teamInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
