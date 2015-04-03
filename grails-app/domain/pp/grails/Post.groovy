package pp.grails

class Post {

	static hasMany = [comments:Comment]

	User author
	Date dateTime
	String title
	String teaser
	String body
	Boolean published = false

	SortedSet comments // Para garantir a ordem dos comentários

    static constraints = {
    	title(nullable: false, blank: false, length: 1..50) 
    	teaser(length :0..100) 
    	body(nullable: false, blank: false) 
    	dateTime(nullable: true) 
    	published(nullable: false)
    }
}
