<html>
<head>
    <meta name="layout" content="main"/>
</head>

<body>
<div id="login-user" class="content scaffold-create" role="main">
    <h1><g:message code="site.entrance.label" /></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${userInstance}">
        <ul class="errors" role="alert">
            <g:eachError bean="${userInstance}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                        error="${error}"/></li>
            </g:eachError>
        </ul>
    </g:hasErrors>
    <g:form method="POST" action="sigin">
        <fieldset class="form">
            <div class="fieldcontain ${hasErrors(bean: userInstance, field: 'login', 'error')} ">
                <label for="login">
                    <g:message code="user.login.label"/>
                </label>
                <g:textField name="login" value="${userInstance?.login}"/>
            </div>

            <div class="fieldcontain ${hasErrors(bean: userInstance, field: 'pass', 'error')} ">
                <label for="pass">
                    <g:message code="user.pass.label"/>

                </label>
                <g:passwordField name="pass" value="${userInstance?.pass}"/>
            </div>
        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="login" class="save"
                            value="${message(code: 'default.button.login.label')}"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>