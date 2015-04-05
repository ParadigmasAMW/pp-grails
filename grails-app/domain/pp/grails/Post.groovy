package pp.grails

class Post {

	String id
	Date dateCreated
	Date lastUpdateed
	String title
	String content
	String author
	Integer commentsCount = 0
	Boolean active = false
	List<Comment> comments

	static embedded = ['comments']
	static hasMany = [comments: Comment]


    static constraints = {
    	commentsCount nullable: true
    }

    static mapping = {
        slug index: true, indexAttributes: [unique:true, dropDups:true]
    }
}
