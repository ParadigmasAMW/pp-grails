<%@ page import="pp.grails.Commentator" %>



<div class="fieldcontain ${hasErrors(bean: commentatorInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="commentator.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${commentatorInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: commentatorInstance, field: 'url', 'error')} ">
	<label for="url">
		<g:message code="commentator.url.label" default="Url" />
		
	</label>
	<g:field type="url" name="url" value="${commentatorInstance?.url}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: commentatorInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="commentator.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" value="${commentatorInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: commentatorInstance, field: 'comment', 'error')} required">
	<label for="comment">
		<g:message code="commentator.comment.label" default="Comment" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="comment" name="comment.id" from="${pp.grails.Comment.list()}" optionKey="id" required="" value="${commentatorInstance?.comment?.id}" class="many-to-one"/>

</div>

