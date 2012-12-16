<html>
<head>
    <meta name="layout" content="main"/>
</head>

<body>

<div class="nav">
    <ul>
        <li <g:if test="${params.action == 'list'}">class='current'</g:if>>
            <g:link action='list'>list</g:link>
        </li>
        <li <g:if test="${params.action == 'create'}">class='current'</g:if>>
            <g:link action='create'>create</g:link>
        </li>
    </ul>
</div>

<div id="content">
    <g:pageProperty name="page.street_name"/>
</div>

</body>
</html>
