package org.pp-grails

import org.apache.commons.lang.builder.HashCodeBuilder

class UserAdmin implements Serializable {

	private static final long serialVersionUID = 1

	User user
	Admin admin

	boolean equals(other) {
		if (!(other instanceof UserAdmin)) {
			return false
		}

		other.user?.id == user?.id &&
		other.admin?.id == admin?.id
	}

	int hashCode() {
		def builder = new HashCodeBuilder()
		if (user) builder.append(user.id)
		if (admin) builder.append(admin.id)
		builder.toHashCode()
	}

	static UserAdmin get(long userId, long adminId) {
		UserAdmin.where {
			user == User.load(userId) &&
			admin == Admin.load(adminId)
		}.get()
	}

	static boolean exists(long userId, long adminId) {
		UserAdmin.where {
			user == User.load(userId) &&
			admin == Admin.load(adminId)
		}.count() > 0
	}

	static UserAdmin create(User user, Admin admin, boolean flush = false) {
		def instance = new UserAdmin(user: user, admin: admin)
		instance.save(flush: flush, insert: true)
		instance
	}

	static boolean remove(User u, Admin r, boolean flush = false) {
		if (u == null || r == null) return false

		int rowCount = UserAdmin.where {
			user == User.load(u.id) &&
			admin == Admin.load(r.id)
		}.deleteAll()

		if (flush) { UserAdmin.withSession { it.flush() } }

		rowCount > 0
	}

	static void removeAll(User u, boolean flush = false) {
		if (u == null) return

		UserAdmin.where {
			user == User.load(u.id)
		}.deleteAll()

		if (flush) { UserAdmin.withSession { it.flush() } }
	}

	static void removeAll(Admin r, boolean flush = false) {
		if (r == null) return

		UserAdmin.where {
			admin == Admin.load(r.id)
		}.deleteAll()

		if (flush) { UserAdmin.withSession { it.flush() } }
	}

	static constraints = {
		admin validator: { Admin r, UserAdmin ur ->
			if (ur.user == null) return
			boolean existing = false
			UserAdmin.withNewSession {
				existing = UserAdmin.exists(ur.user.id, r.id)
			}
			if (existing) {
				return 'userRole.exists'
			}
		}
	}

	static mapping = {
		id composite: ['admin', 'user']
		version false
	}
}
