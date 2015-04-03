<%@ page contentType="text/html;charset=utf-16" %>
<html>
  <head>
      <title>Paradigmas - MicroBlog - Editando o post</title>
  </head>
  <body>
  <h1>Editando o seu post</h1>
  <div id="validationerrors">
      <g:renderErrors bean="${post}"/>
  </div>
  
  
  <g:link controller="post" action="edit">
    Crie um novo post
  </g:link>
  
  <g:form controller="post" action="save">
      <g:hiddenField name="id" value="${post.id}"/>
      <dl>
		  <g:link controller="post" action="edit" id="${post.id}">
		    Campos para edição
		  </g:link>
          <dt>Título:</dt>
          <dd>
          <g:textField name="title" value="${post.title}" size="50"/>
          </dd>
          <dt>Teaser:</dt>
          <dd>
          <g:textArea name="teaser" value="${post.teaser}" cols="50"/>
          </dd>
          <dt>Post:</dt>
          <dd>
          <g:textArea name="body" value="${post.body}" rows="20" cols="50"/>
          </dd>
		  <g:link controller="post" action="view" id="${post.id}">
			Visualizar este post
		  </g:link>
      </dl>
        <g:submitButton name="submit" value="Save"/>
  </g:form>
  
  
  
  
  </body>
</html>