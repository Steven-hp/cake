import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from 'axios'

//导入ElenmentUI的所有组件
import Element from 'element-ui';

// 导入ElenmentUI的样式文件
import 'element-ui/lib/theme-chalk/index.css'


axios.defaults.baseURL = 'http://127.0.0.1:3000'
Vue.prototype.axios = axios;
Vue.config.productionTip = false
Vue.use(Element)
// Vue.use(Container);
// Vue.use(Radio);
// Vue.use(TimePicker);
// Vue.use(DatePicker);
// Vue.use(Tabs);


// Vue.use(Element);
new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
