<%@ page import="pp.grails.Comment" %>



<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'comment', 'error')} required">
	<label for="comment">
		<g:message code="comment.comment.label" default="Comment" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="comment" required="" value="${commentInstance?.comment}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'post', 'error')} required">
	<label for="post">
		<g:message code="comment.post.label" default="Post" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="post" name="post.id" from="${pp.grails.Post.list()}" optionKey="id" required="" value="${commentInstance?.post?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'who', 'error')} required">
	<label for="who">
		<g:message code="comment.who.label" default="Who" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="who" name="who.id" from="${pp.grails.Commentator.list()}" optionKey="id" required="" value="${commentInstance?.who?.id}" class="many-to-one"/>

</div>

