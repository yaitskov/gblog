<g:applyLayout name="post">

<head>
    <g:set var="entityName" value="${message(code: 'post.label', default: 'Post')}"/>
    <title>Recent blog posts</title>
</head>

<content tag="block-post">

    <div id="list-post" class="content scaffold-list" role="main">
        <h1><g:message code="default.list.label" args="[entityName]"/></h1>
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <table>
            <thead>
            <tr>

                <th><g:message code="post.author.label" default="Author"/></th>

                <g:sortableColumn property="body" title="${message(code: 'post.body.label', default: 'Body')}"/>

                <g:sortableColumn property="created"
                                  title="${message(code: 'post.created.label', default: 'Created')}"/>

                <g:sortableColumn property="title" title="${message(code: 'post.title.label', default: 'Title')}"/>

            </tr>
            </thead>
            <tbody>
            <g:each in="${postInstanceList}" status="i" var="postInstance">
                <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                    <td><g:link action="show"
                                id="${postInstance.id}">${fieldValue(bean: postInstance, field: "author")}</g:link></td>

                    <td>${fieldValue(bean: postInstance, field: "body")}</td>

                    <td><g:formatDate date="${postInstance.created}"/></td>

                    <td>${fieldValue(bean: postInstance, field: "title")}</td>

                </tr>
            </g:each>
            </tbody>
        </table>

        <div class="pagination">
            <g:paginate total="${postInstanceTotal}"/>
        </div>
    </div>
</content>
</g:applyLayout>
