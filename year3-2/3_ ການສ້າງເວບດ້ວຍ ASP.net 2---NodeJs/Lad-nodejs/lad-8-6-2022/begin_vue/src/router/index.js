import { createWebHistory, createRouter } from "vue-router";
import Home from "../pages/home.vue";



export const routes = [
   
    {
        name: "Home",
        path:"/",
        component: Home 
    },
    
];

const router = createRouter({
    history: createWebHistory(),
    routes: routes,
    scrollBehavior(){
        window.scrollTo(0,0);
    }

});

export default router;