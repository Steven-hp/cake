<template>
  <div id="app">
    <router-view/>
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
export default {
  name:"app",
  components:{
    appFooter
  }
}
</script>