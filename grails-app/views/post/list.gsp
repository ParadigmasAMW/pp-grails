<%@ page contentType="text/html;charset=UTF-8" %>
<html>
  <head>
      <title>Paradigmas - MicroBlog</title>
  </head>
  <body>
  <h1>Meus posts</h1>

  <g:link controller="post" action="edit">
    Crie um novo post para o Blog
  </g:link>
  
  
  
  <g:each in="${posts}" var="post">
      <div>
		  <g:link controller="post" action="edit" id="${post.id}">
		    Clique aqui para editar este post
		  </g:link>
          <h2>${post.title}</h2>
          <p>${post.teaser}</p>
          <p>Last Updated: ${post.dateTime}</p>
		  <g:link controller="post" action="view" id="${post.id}">
			Visualização do post
		  </g:link>
      </div>
  </g:each>
  </body>
</html>