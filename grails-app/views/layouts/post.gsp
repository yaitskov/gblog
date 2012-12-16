<%@ page import="org.hub.gblog.Post" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title><g:layoutTitle/></title>
</head>

<body>

<div class="nav" role="navigation">
    <ul>
        <g:if test="${params.action != 'recent'}">
            <li>
                <g:link class="list" action="recent">
                    Recent posts
                </g:link>
            </li>
        </g:if>
        <li>
            <g:link class="create" action="create">
                <g:message code="default.new.label" args="[entityName]"/>
            </g:link>
        </li>
    </ul>
</div>

<div id="content">
    <g:pageProperty name="page.block-post"/>
</div>

</body>
</html>
