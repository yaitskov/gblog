<%@ page import="org.hub.gblog.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'login', 'error')} ">
    <label for="login">
        <g:message code="user.login.label" default="Login"/>

    </label>
    <g:textField name="login" value="${userInstance?.login}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'pass', 'error')} ">
    <label for="pass">
        <g:message code="user.pass.label" default="Pass"/>

    </label>
    <g:textField name="pass" value="${userInstance?.pass}"/>
</div>

