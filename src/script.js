import Vue from 'vue'
import App from './components/App'

// För att slippa en varning
Vue.config.productionTip = false

new Vue({
    render: h => h(App),
}).$mount('#app')