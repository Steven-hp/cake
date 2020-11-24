import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from 'axios'
import qs from 'qs'
import ElementUI from 'element-ui';
import VueLazyload from 'vue-lazyload';
import 'element-ui/lib/theme-chalk/index.css';
axios.defaults.baseURL = 'http://127.0.0.1:3000'
Vue.use(ElementUI);
Vue.prototype.axios = axios;
Vue.config.productionTip = false
Vue.prototype.qs = qs;
Vue.use(VueLazyload, {
  loading: require('./assets/home/jiazai.png'),//加载中图片，一定要有，不然会一直重复加载占位图
  error: require('./assets/home/shibai.png')  //加载失败图片
});
new Vue({
  el: '#app',
  router,
  store,
  render: h => h(App)
}).$mount('#app')
