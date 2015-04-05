
<%@ page import="pp.grails.Post" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'post.label', default: 'Post')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-post" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-post" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list post">
			
				<g:if test="${postInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="post.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${postInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${postInstance?.teaser}">
				<li class="fieldcontain">
					<span id="teaser-label" class="property-label"><g:message code="post.teaser.label" default="Teaser" /></span>
					
						<span class="property-value" aria-labelledby="teaser-label"><g:fieldValue bean="${postInstance}" field="teaser"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${postInstance?.body}">
				<li class="fieldcontain">
					<span id="body-label" class="property-label"><g:message code="post.body.label" default="Body" /></span>
					
						<span class="property-value" aria-labelledby="body-label"><g:fieldValue bean="${postInstance}" field="body"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${postInstance?.dateTime}">
				<li class="fieldcontain">
					<span id="dateTime-label" class="property-label"><g:message code="post.dateTime.label" default="Date Time" /></span>
					
						<span class="property-value" aria-labelledby="dateTime-label"><g:formatDate date="${postInstance?.dateTime}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${postInstance?.published}">
				<li class="fieldcontain">
					<span id="published-label" class="property-label"><g:message code="post.published.label" default="Published" /></span>
					
						<span class="property-value" aria-labelledby="published-label"><g:formatBoolean boolean="${postInstance?.published}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${postInstance?.comments}">
				<li class="fieldcontain">
					<span id="comments-label" class="property-label"><g:message code="post.comments.label" default="Comments" /></span>
					
						<g:each in="${postInstance.comments}" var="c">
						<span class="property-value" aria-labelledby="comments-label"><g:link controller="comment" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:postInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${postInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
