<g:applyLayout name="post">

    <head>
        <g:set var="entityName" value="${message(code: 'post.label', default: 'Post')}"/>
        <title>Recent blog posts</title>
    </head>

    <content tag="block-post">
        <div id="show-post" class="content scaffold-show" role="main">
            <h1><g:message code="default.show.label" args="[entityName]"/></h1>
            <ol class="property-list post">
                <g:if test="${postInstance?.author}">
                    <li class="fieldcontain">
                        <span id="author-label" class="property-label">
                            <g:message code="post.author.label"
                                       default="Author"/></span>

                        <span class="property-value" aria-labelledby="author-label">
                            <g:link controller="user"
                                    action="show"
                                    id="${postInstance?.author?.id}">
                                ${postInstance?.author?.encodeAsHTML()}
                            </g:link>
                        </span>
                    </li>
                </g:if>

                <g:if test="${postInstance?.body}">
                    <li class="fieldcontain">
                        <span id="body-label" class="property-label"><g:message code="post.body.label"
                                                                                default="Body"/></span>

                        <span class="property-value" aria-labelledby="body-label"><g:fieldValue bean="${postInstance}"
                                                                                                field="body"/></span>

                    </li>
                </g:if>

                <g:if test="${postInstance?.created}">
                    <li class="fieldcontain">
                        <span id="created-label" class="property-label"><g:message code="post.created.label"
                                                                                   default="Created"/></span>

                        <span class="property-value" aria-labelledby="created-label"><g:formatDate
                                date="${postInstance?.created}"/></span>

                    </li>
                </g:if>

                <g:if test="${postInstance?.title}">
                    <li class="fieldcontain">
                        <span id="title-label" class="property-label"><g:message code="post.title.label"
                                                                                 default="Title"/></span>

                        <span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${postInstance}"
                                                                                                 field="title"/></span>

                    </li>
                </g:if>

            </ol>
            <g:
            <g:form>
                <fieldset class="buttons">
                    <g:link class="edit" action="edit" id="${postInstance?.id}">
                        <g:message
                            code="default.button.edit.label"
                            default="Edit"/></g:link>
                    <g:link class="delete" action="delete" id="${postInstance?.id}">
                        Delete
                    </g:link>
                </fieldset>
            </g:form>
        </div>
    </content>
</g:applyLayout>