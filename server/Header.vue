<template>
  <div class="header">
    <div class='header-nav'>
     <!--  左侧logo-->
     <div class='nav_left'>
        <a href="https://www.21cake.com/">
        <img src="../assets/image/logo.png" alt="21cake logo">
        </a>
      </div>
     <!-- 中间 商品导航 -->
<div class='nav_center'>
  <!-- mainbaoxiedaohanglan -->
      <el-breadcrumb separator=""  >
        <el-breadcrumb-item :to="{ path: '/' }">首页</el-breadcrumb-item>
        <el-breadcrumb-item><a href="/">蛋糕</a></el-breadcrumb-item>
        <el-breadcrumb-item><a href="#">面包</a></el-breadcrumb-item>
        <el-breadcrumb-item><a href="#">冰淇淋</a></el-breadcrumb-item>
        <el-breadcrumb-item><a href="#">咖啡下午茶</a></el-breadcrumb-item>
        <el-breadcrumb-item><a href="#">全国送</a></el-breadcrumb-item>
        <el-breadcrumb-item><a href="#">会员专区</a></el-breadcrumb-item>
     </el-breadcrumb>    
     </div>
     <!-- 右侧用户相关导航区-->
     <div class='nav_right'>
      <el-menu :default-active="activeIndex" class="el-menu-demo" mode="horizontal" @select="handleSelect">
          <el-submenu index="1" class="app_icon" >
            <template slot="title" >App下载</template>
            <el-menu-item index="1-1" >
              <img src="../assets/image/footer-erweima.png" class="app-list" alt="app.png">
              <div class="scaner_info">
                下载享更多优惠
              </div>
            </el-menu-item>
          </el-submenu>
          <el-submenu index="2">
            <template slot="title"><span>上海</span><img class="img_12" src="../assets/image/select.png" alt=""></template>
              <el-menu-item index="2-1">北京</el-menu-item>
              <el-menu-item index="2-2">南京</el-menu-item>
              <el-menu-item index="2-3">成都</el-menu-item>
              <el-menu-item index="2-4">无锡</el-menu-item>
              <el-menu-item index="2-5">西安</el-menu-item>
              <el-menu-item index="2-6">扬州</el-menu-item>
          </el-submenu>
          <el-submenu index="3">
            <template slot="title">消息</template>
              <el-menu-item index="3-1">通知</el-menu-item>
              <el-menu-item index="3-2">物流</el-menu-item>
          </el-submenu>
          <el-menu-item index="3">
            <a href="https://www.ele.me" target="_blank">登录</a>
            /
            <a href="#" target="_blank">注册</a>
            <!-- 购物车图标 -->
            <a href="#" > 
             <div class="shopcart_icon"></div>
            </a>
            </el-menu-item>
      </el-menu>
     </div>
    
    </div>
  </div>
</template>

<script>
  export default {
    data() {
      return {
        activeIndex: '1',
        activeIndex2: '1'
      };
    },
    methods: {
      handleSelect(key, keyPath) {
        console.log(key, keyPath);
      }
    }
  }
</script>

<style>
/* 头部样式 */
.header{
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 80px;
    background: #FFF;
    box-shadow: 0 2px 2px 0 rgba(195,195,195,0.50);  
}
/* 整个导航栏水平居中、位置设置 */
.header-nav{
   margin: 0 auto;
    max-width: 1200px;
    min-width: 760px;
    height: 80px; 
}
 /*导航栏左侧定位logo  */
 .nav_left{
    float: left;
    width: 120px;
    height: 44px;
    margin-top: 18px;
 }
.nav_left img{
  width:100%
}
 /*导航栏中间部分定位 */
 .nav_center {
   position: relative;
    float: left;
    padding:34px;
    margin-left: 30px;
 }
 /* 导航栏右侧定位 */
 .nav_right{
   float:right;
   padding:12px 0 0;
 }
 /* 文本样式 */
 #app .nav_center a,.el-breadcrumb__inner,
 .nav_center .el-breadcrumb__inner.is-link,
 .nav_right .el-menu--horizontal>.el-menu-item a,
 .nav_right .el-menu--horizontal>.el-submenu .el-submenu__title{
   font-family: 'PingFang SC','Heiti SC','微软雅黑',Helvetica,Arial;
    font-size: 14px;
    color:#684029;
    font-weight:400;
    text-decoration: none;
  } 
  /* 鼠标悬停颜色变化hover */
 #app .nav_center a:hover,
 .el-breadcrumb__inner a:hover,
 .nav_center .el-breadcrumb__inner.is-link:hover,
 .nav_right .el-menu--horizontal>.el-menu-item a:hover,
 .nav_right .el-menu--horizontal>.el-submenu .el-submenu__title:hover {
    color: #BB9772;
}
 /*消除导航栏边框  */
 .nav_right .el-menu.el-menu--horizontal,
 .nav_right .el-menu--horizontal>.el-menu-item.is-active{
   border:none 
  } 
  /*消除app 下拉箭头icon */
  .el-submenu__title i{
   display:none;
  } 
  /* 重设城市选项卡下拉箭头icon */
 .img_12{
  width: 10px;height: 10px;
  margin-left: 5px;
 }
/* 重新定义及设置下拉框大小大小 */
.nav_right .el-menu--collapse .el-menu .el-submenu,.el-menu--horizontal .el-menu--popup {
      min-width: 105px;
      min-height:180px;
       font-size: 12px;
      text-align:center;
}
/* 下拉框字体颜色 */
.el-menu--horizontal .el-menu .el-menu-item.is-active,
 .el-menu--horizontal .el-menu .el-submenu.is-active>.el-submenu__title {
      color:#684029
}
/* app下拉框大小*/
 .app-list {
    height: 115px;
    padding: 10px;
    width: 100px;
    left: -34px;
    font-size: 12px;
}
/* 购物车图片 */
.nav_right .shopcart_icon{
  display: inline-block;
  width:20px;
  height:20px;
  margin-left:15px;
  /* margin-top:0px; */
  background-image:url('../assets/image/icon.png') ;
  background-position: -286px -76px;
  background-size:310px 120px;
}
</style>