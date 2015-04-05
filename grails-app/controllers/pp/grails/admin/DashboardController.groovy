package pp.grails.admin

import pp.grails.Page
import pp.grails.Post
import pp.grails.command.Dashboard

class DashboardController {

    static namespace = 'adminV1'
    static responseFormats = ['json', 'xml']

    def index() {
        Dashboard dashboard = new Dashboard()
        dashboard.activePages = Page.countByActive(true)
        dashboard.inActivePages = Page.countByActive(false)
        dashboard.activePosts = Post.countByActive(true)
        dashboard.inActivePosts = Post.countByActive(false)

        respond dashboard
    }
}