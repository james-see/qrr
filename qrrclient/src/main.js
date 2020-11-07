import Vue from "vue";
import App from "./App.vue";
import router from "./router";
import vuetify from "./plugins/vuetify";

import "vuetify/dist/vuetify.min.css";
import VueSession from "vue-session";

Vue.use(vuetify);
Vue.use(VueSession);

Vue.config.productionTip = false;

/* eslint-disable no-new */
new Vue({
  el: "#app",
  router,
  components: { App },
  template: "<App/>",
});
