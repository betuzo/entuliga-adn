<%@ page import="entuliga.adn.Team" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'team.label', default: 'Team')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-team" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                           default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-team" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list team">

        <g:if test="${teamInstance?.abbreviation}">
            <li class="fieldcontain">
                <span id="abbreviation-label" class="property-label"><g:message code="team.abbreviation.label"
                                                                                default="Abbreviation"/></span>

                <span class="property-value" aria-labelledby="abbreviation-label"><g:fieldValue bean="${teamInstance}"
                                                                                                field="abbreviation"/></span>

            </li>
        </g:if>

        <g:if test="${teamInstance?.active}">
            <li class="fieldcontain">
                <span id="active-label" class="property-label"><g:message code="team.active.label"
                                                                          default="Active"/></span>

                <span class="property-value" aria-labelledby="active-label"><g:formatBoolean
                        boolean="${teamInstance?.active}"/></span>

            </li>
        </g:if>

        <g:if test="${teamInstance?.alias}">
            <li class="fieldcontain">
                <span id="alias-label" class="property-label"><g:message code="team.alias.label"
                                                                         default="Alias"/></span>

                <span class="property-value" aria-labelledby="alias-label"><g:fieldValue bean="${teamInstance}"
                                                                                         field="alias"/></span>

            </li>
        </g:if>

        <g:if test="${teamInstance?.city}">
            <li class="fieldcontain">
                <span id="city-label" class="property-label"><g:message code="team.city.label" default="City"/></span>

                <span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${teamInstance}"
                                                                                        field="city"/></span>

            </li>
        </g:if>

        <g:if test="${teamInstance?.federation}">
            <li class="fieldcontain">
                <span id="federation-label" class="property-label"><g:message code="team.federation.label"
                                                                              default="Federation"/></span>

                <span class="property-value" aria-labelledby="federation-label"><g:fieldValue bean="${teamInstance}"
                                                                                              field="federation"/></span>

            </li>
        </g:if>

        <g:if test="${teamInstance?.firstName}">
            <li class="fieldcontain">
                <span id="firstName-label" class="property-label"><g:message code="team.firstName.label"
                                                                             default="First Name"/></span>

                <span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${teamInstance}"
                                                                                             field="firstName"/></span>

            </li>
        </g:if>

        <g:if test="${teamInstance?.initDate}">
            <li class="fieldcontain">
                <span id="initDate-label" class="property-label"><g:message code="team.initDate.label"
                                                                            default="Init Date"/></span>

                <span class="property-value" aria-labelledby="initDate-label"><g:formatDate
                        date="${teamInstance?.initDate}"/></span>

            </li>
        </g:if>

        <g:if test="${teamInstance?.lastName}">
            <li class="fieldcontain">
                <span id="lastName-label" class="property-label"><g:message code="team.lastName.label"
                                                                            default="Last Name"/></span>

                <span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${teamInstance}"
                                                                                            field="lastName"/></span>

            </li>
        </g:if>

        <g:if test="${teamInstance?.siteName}">
            <li class="fieldcontain">
                <span id="siteName-label" class="property-label"><g:message code="team.siteName.label"
                                                                            default="Site Name"/></span>

                <span class="property-value" aria-labelledby="siteName-label"><g:fieldValue bean="${teamInstance}"
                                                                                            field="siteName"/></span>

            </li>
        </g:if>

        <g:if test="${teamInstance?.state}">
            <li class="fieldcontain">
                <span id="state-label" class="property-label"><g:message code="team.state.label"
                                                                         default="State"/></span>

                <span class="property-value" aria-labelledby="state-label"><g:fieldValue bean="${teamInstance}"
                                                                                         field="state"/></span>

            </li>
        </g:if>

        <g:if test="${teamInstance?.teamId}">
            <li class="fieldcontain">
                <span id="teamId-label" class="property-label"><g:message code="team.teamId.label"
                                                                          default="Team Id"/></span>

                <span class="property-value" aria-labelledby="teamId-label"><g:fieldValue bean="${teamInstance}"
                                                                                          field="teamId"/></span>

            </li>
        </g:if>

    </ol>
    <g:form url="[resource: teamInstance, action: 'delete']" method="DELETE">
        <fieldset class="buttons">
            <g:link class="edit" action="edit" resource="${teamInstance}"><g:message code="default.button.edit.label"
                                                                                     default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
