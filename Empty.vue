<template>
<div id="empty">
   <!-- 标题开始 -->
    <div class="title">
      <!-- <h3>购物车
        <i style="padding: 0px 15px">/</i>
        <i class="el-icon-shopping-cart-1"></i>
      </h3> -->
      <h3><el-breadcrumb>
        <el-breadcrumb-item :to="{ path: '/' }">首页</el-breadcrumb-item>
        <el-breadcrumb-item>购物车</el-breadcrumb-item>
        <el-breadcrumb-item>
          <i class="el-icon-shopping-cart-1"></i>
        </el-breadcrumb-item>
      </el-breadcrumb></h3>
    </div>
    <!-- 标题结束 -->
     <!-- 空购物车开始     购物车为空时默认显示trunk1 -->
        <div id="trunk1">
          <img src="../assets/shopping.png" alt="">
          <p>您还没有选择商品</p>
          <el-link type="danger" href="/"><h4>去购物 >></h4></el-link>
        </div>
      <!-- 空购物车结束 -->
</div>
</template>
<script>

</script>

<style >
#empty{
    width: 85%;
    margin: 0 auto;
}
</style >
