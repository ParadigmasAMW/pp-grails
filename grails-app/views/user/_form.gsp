<%@ page import="pp.grails.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="user.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${userInstance?.username}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="user.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${userInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="user.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${userInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'fullname', 'error')} required">
	<label for="fullname">
		<g:message code="user.fullname.label" default="Fullname" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="fullname" required="" value="${userInstance?.fullname}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'githubUser', 'error')} required">
	<label for="githubUser">
		<g:message code="user.githubUser.label" default="Github User" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="githubUser" required="" value="${userInstance?.githubUser}"/>

</div>

