<g:applyLayout name="post">

    <head>
        <g:set var="entityName" value="${message(code: 'post.label', default: 'Post')}"/>
        <title>Recent blog posts</title>
    </head>

    <content tag="block-post">

        <div id="list-post" class="content scaffold-list" role="main">
            <h1>Reset blog posts</h1>

            <div class="card-list">
                <g:each in="${postInstanceList}" status="i" var="postInstance">

                    <div class="card ${(i % 2) == 0 ? 'even' : 'odd'}">
                        <div class="title">
                            <g:link action="show" id="${postInstance.id}">
                                <g:if test="${postInstance.title}">
                                    ${fieldValue(bean: postInstance, field: 'title')}
                                </g:if>
                                <g:else>
                                    Post without name
                                </g:else>
                            </g:link>
                        </div>

                        <div class="date">
                            <g:formatDate formatName="recent.date.format"
                                          date="${postInstance.created}"/>
                        </div>
                    </div>

                </g:each>
                <g:unless test="${postInstanceList}">
                    <p>There isn't any post yet :(</p>
                </g:unless>
            </div>

            <div class="pagination">
                <g:paginate total="${postInstanceTotal}"/>
            </div>
        </div>
    </content>
</g:applyLayout>
