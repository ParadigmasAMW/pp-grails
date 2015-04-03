<%@ page contentType="text/html;charset=UTF-8" %>
<html>
  <head>
      <title>Paradigmas - MicroBlog - Comente!</title>
  </head>
  <body>
  <h1>Crie um cometário</h1>
  <div id="validationerrors">
      <g:renderErrors bean="${comment}"/>
  </div>
  <g:form controller="comment" action="save">
      <g:hiddenField name="postId" value="${postId}"/>
      <dl>
          <dt>Nome:</dt>
          <dd>
          <g:textField name="who.name" value="${comment.who.name}"/>
          </dd>
          <dt>E-mail:</dt>
          <dd>
          <g:textField name="who.email" value="${comment.who.email}"/>
          </dd>
          <dt>Site/blog:</dt>
          <dd>
          <g:textField name="who.url" value="${comment.who.url}"/>
          </dd>
          <dt>Cometário:</dt>
          <dd>
          <g:textArea name="comment" value="${comment.comment}" rows="20" cols="50"/>
          </dd>
      </dl>
        <g:submitButton name="submit" value="Save"/>
  </g:form>
  </body>
</html>