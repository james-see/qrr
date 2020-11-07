import Vue from "vue";
import VueRouter from "vue-router";
import Auth from "@/components/pages/Auth";
import Movies from "@/components/pages/Movies";

Vue.use(VueRouter);



export default new VueRouter({
  routes: [
    {
      path: '/',
      name: 'Movies',
      component: Movies
    },
    {
      path: '/auth',
      name: 'Auth',
      component: Auth
    }
  ]
})
