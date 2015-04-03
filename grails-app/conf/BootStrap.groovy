import pp.grails.*

class BootStrap {

    def init = { servletContext ->

    	new Post(title:"Criando um blog com Grails",
			   teaser:"Passos para a criação de um blog utilizando Groovy on Grails",
			   body:"O conteúdo do post deveria estar aqui... risos!",
			   published:true).save()


	   new Post(title:"Função deste blog",
			   teaser:"Porque criamos este blog.",
			   body:"Criamos para postarmos informações sobre os nossos trabalhos de Paradigmas de Programação",
			   published:false).save()


    }
    def destroy = {
    }
}
