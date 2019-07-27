import Vue from 'vue'
import App from './App.vue'
import axios from 'axios'
import qs from 'qs'
import VueRouter from 'vue-router'
import routers from './router'
import echarts from 'echarts'
import 'echarts-wordcloud'

Vue.prototype.$echarts = echarts

Vue.config.productionTip = false
Vue.prototype.$axios = axios;
Vue.prototype.qs = qs;
Vue.use(axios)
Vue.use(qs)
Vue.use(VueRouter)

const router = new VueRouter({
  mode:'history',
  routes:routers
})

new Vue({
  render: h => h(App),
  router
}).$mount('#app')
