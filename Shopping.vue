<template>
<!-- 购物车开始 -->
    <div id="shopping">
        <!-- 标题 -->
        <div id="title">
            <h3>购物车<i>/</i><i class="el-icon-shopping-cart-1"></i></h3>
        </div>
        <!-- 标题结束 -->
        <!-- 主体开始 -->
        <!-- 购物车为空时默认显示trunk1 -->
        <div class="trunk">
            <div class="trunk1">
                <img src="../assets/shopping.png" alt="">
                <p>您还没有选择商品</p>
                <el-link type="danger" href="/">去购物 ></el-link>
            </div>
            <div class="trunk2">
                
            </div>
        </div>
    </div>
<!-- 购物车结束 -->

</template>

<script>
export default {
    // data() {
    //     return {
    //         src:'https://mall.christine.com.cn/themes/klst/images/icons.png'
    //         src: '../assets/shopping.png'
    //     }
    // }
    // mounted(){

    // },
}
</script>

<style>
#shopping{
    width: 85%;
    margin: 0 auto;
}
#title{
    color: #791a1e;
    text-align: left;
}
.trunk{
    margin: 0 auto;
    padding: 80px 50px;

}
.trunk1{
    margin: 0 auto;
    padding: 10px 20px;
    width: 95%;
}
</style>