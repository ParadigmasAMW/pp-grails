package pp.grails.auth

class User {

	transient springSecurityService

	String username
	String password

	String name // PP-Grails
	String email  // PP-Grails
	String githubUser  // PP-Grails

	boolean enabled = true
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired

	String md5HashEmail  // PP-Grails

	Set<Role> authorities  // PP-Grails
	static embedded = ['authorities']  // PP-Grails

	static transients = ['springSecurityService']

	static constraints = {
		username blank: false, unique: true
		password blank: false, size: 6..64  // PP-Grails
		email blank: false, nullable: false  // PP-Grails
		name blank: false  // PP-Grails

	}

	static mapping = {
		password column: '`password`'
	}

	Set<Role> getAuthorities() {
		UserRole.findAllByUser(this).collect { it.role }
	}

	def beforeInsert() {
		encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService?.passwordEncoder ? springSecurityService.encodePassword(password) : password
	}

    public String getMd5HashEmail() {  // PP-Grails
        return this.email?.trim().encodeAsMD5()  // PP-Grails
    }  // PP-Grails
}
