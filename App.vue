<template>
  <div id="app">
    <router-view/>
    <app-gotop></app-gotop>
    <app-footer></app-footer>
  </div>
</template>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  color: #2c3e50;
}
body{
  margin: 0;
}
</style>
<script>
import appFooter from './components/Footer'
import appGotop from './components/Gotop'
export default {
  name:"app",
  components:{
    appFooter,
    appGotop
  }
}
</script>