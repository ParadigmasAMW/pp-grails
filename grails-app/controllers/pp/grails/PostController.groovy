package pp.grails

class PostController {

		def defaultAction = 'list'

    def index = {
        render("Hello cruel cruel world")
    }
	
	def goodbye = {
        render("Goodbye world")
    }

	def edit = {
		def post = Post.get(params.id)
		if(!post) {
			post = new Post()
		}
		render(view:'edit', model:[post:post])
	}

	def list = {
		println "inside list"
		render(
				view:'list',
				model:[posts:Post.list(
						sort:'dateTime',
						order:'desc')])
	}
	
	
	def save = {
		def post = loadPost(params.id)
		post.properties = params
		if(post.save()) {
			redirect(action:'list')
		} else {
			render(view:'edit', model:[post:post])
		}
	}

	private loadPost(id) {
		def post = new Post();
		if(id) {
			post = Post.get(id)
		}
		return post
	}
	
	def view = {
		render(view:'view', model:[post:Post.get(params.id)])
	}	
}
