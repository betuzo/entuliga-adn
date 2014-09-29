<%@ page import="entuliga.adn.Team" %>



<div class="fieldcontain ${hasErrors(bean: teamInstance, field: 'abbreviation', 'error')} ">
    <label for="abbreviation">
        <g:message code="team.abbreviation.label" default="Abbreviation"/>

    </label>
    <g:textField name="abbreviation" value="${teamInstance?.abbreviation}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: teamInstance, field: 'active', 'error')} ">
    <label for="active">
        <g:message code="team.active.label" default="Active"/>

    </label>
    <g:checkBox name="active" value="${teamInstance?.active}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: teamInstance, field: 'alias', 'error')} ">
    <label for="alias">
        <g:message code="team.alias.label" default="Alias"/>

    </label>
    <g:textField name="alias" value="${teamInstance?.alias}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: teamInstance, field: 'city', 'error')} ">
    <label for="city">
        <g:message code="team.city.label" default="City"/>

    </label>
    <g:textField name="city" value="${teamInstance?.city}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: teamInstance, field: 'federation', 'error')} ">
    <label for="federation">
        <g:message code="team.federation.label" default="Federation"/>

    </label>
    <g:textField name="federation" value="${teamInstance?.federation}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: teamInstance, field: 'firstName', 'error')} ">
    <label for="firstName">
        <g:message code="team.firstName.label" default="First Name"/>

    </label>
    <g:textField name="firstName" value="${teamInstance?.firstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: teamInstance, field: 'initDate', 'error')} ">
    <label for="initDate">
        <g:message code="team.initDate.label" default="Init Date"/>

    </label>
    <g:datePicker name="initDate" precision="day" value="${teamInstance?.initDate}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: teamInstance, field: 'lastName', 'error')} ">
    <label for="lastName">
        <g:message code="team.lastName.label" default="Last Name"/>

    </label>
    <g:textField name="lastName" value="${teamInstance?.lastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: teamInstance, field: 'siteName', 'error')} ">
    <label for="siteName">
        <g:message code="team.siteName.label" default="Site Name"/>

    </label>
    <g:textField name="siteName" value="${teamInstance?.siteName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: teamInstance, field: 'state', 'error')} ">
    <label for="state">
        <g:message code="team.state.label" default="State"/>

    </label>
    <g:textField name="state" value="${teamInstance?.state}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: teamInstance, field: 'teamId', 'error')} ">
    <label for="teamId">
        <g:message code="team.teamId.label" default="Team Id"/>

    </label>
    <g:textField name="teamId" value="${teamInstance?.teamId}"/>

</div>

