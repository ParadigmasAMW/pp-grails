<%@ page import="pp.grails.Post" %>



<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="post.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${postInstance?.title}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'teaser', 'error')} required">
	<label for="teaser">
		<g:message code="post.teaser.label" default="Teaser" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="teaser" required="" value="${postInstance?.teaser}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'body', 'error')} required">
	<label for="body">
		<g:message code="post.body.label" default="Body" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="body" required="" value="${postInstance?.body}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'dateTime', 'error')} ">
	<label for="dateTime">
		<g:message code="post.dateTime.label" default="Date Time" />
		
	</label>
	<g:datePicker name="dateTime" precision="day"  value="${postInstance?.dateTime}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'published', 'error')} ">
	<label for="published">
		<g:message code="post.published.label" default="Published" />
		
	</label>
	<g:checkBox name="published" value="${postInstance?.published}" />

</div>

<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'comments', 'error')} ">
	<label for="comments">
		<g:message code="post.comments.label" default="Comments" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${postInstance?.comments?}" var="c">
    <li><g:link controller="comment" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="comment" action="create" params="['post.id': postInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'comment.label', default: 'Comment')])}</g:link>
</li>
</ul>


</div>

