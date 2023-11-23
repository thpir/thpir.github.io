import { createRouter, createWebHistory } from "vue-router";
import About from "../views/About.vue"
import Education from "../views/Education.vue"
import Home from "../views/Home.vue"
import Projects from "../views/Projects.vue"
import NotFoundView from "../views/NotFoundView.vue"

const router = createRouter({
    history: createWebHistory(import.meta.env.BASE_URL),
    routes: [
        {
            path: "/",
            name: "home",
            component: Home,
        },
        {
            path: "/home",
            redirect: "/",
        },
        {
            path: "/about",
            name: "about",
            component: About,
        },
        {
            path: "/education",
            name: "education",
            component: Education,
        },
        {
            path: "/projects",
            name: "projects",
            component: Projects,
        },
        {
            path: "/:catchall(.*)*",
            name: "not found",
            component: NotFoundView,
        }
    ]
})

export default router