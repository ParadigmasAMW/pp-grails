package pp.grails

class User {

	String username
	String password
	String fullname
	String email
	String githubUser

    static constraints = {
    	username (blanck: false, unique: true)
    	password (blanck: false)
    }
}
