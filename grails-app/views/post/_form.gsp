<%@ page import="org.hub.gblog.Post" %>



<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'author', 'error')} required">
	<label for="author">
		<g:message code="post.author.label" default="Author" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="author" name="author.id" from="${org.hub.gblog.User.list()}" optionKey="id" required="" value="${postInstance?.author?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'body', 'error')} ">
	<label for="body">
		<g:message code="post.body.label" default="Body" />
		
	</label>
	<g:textField name="body" value="${postInstance?.body}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'created', 'error')} required">
	<label for="created">
		<g:message code="post.created.label" default="Created" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="created" precision="day"  value="${postInstance?.created}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="post.title.label" default="Title" />
		
	</label>
	<g:textField name="title" value="${postInstance?.title}"/>
</div>

