import pp.grails.BlogSetting
import pp.grails.auth.Role
import pp.grails.auth.User

class BootStrap {

    def init = { servletContext ->

        Role roleAdmin = Role.findByAuthority("ROLE_ADMIN") ?:
            new Role(authority: "ROLE_ADMIN").save(failOnError: true)


         User.findByUsername("admin") ?:
            new User(username: 'admin',
                password: 'admin123',
                email: 'admin@admin.com',
                name: 'Admun User',
                authorities: [roleAdmin]).save(failOnError: true)

        BlogSetting.get(BlogSetting.SETTINGS_ID) ?:
            new BlogSetting(blogTitle: "Paradigamas MicroBLog",
                    postsPerPage: 5,
                    footerContent: "Blog powered by <a href=\"http://grails.org\">Grails</a>").save()
    }
    def destroy = {
    }
}
