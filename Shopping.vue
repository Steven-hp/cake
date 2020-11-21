<template>
<div>
<!-- 响应式布局 -->
  <el-row :gutter="10">
    <el-col :xs="8" :sm="6" :md="4" :lg="3" :xl="1"></el-col>
    <el-col :xs="4" :sm="6" :md="8" :lg="9" :xl="11"></el-col>
    <el-col :xs="4" :sm="6" :md="8" :lg="9" :xl="11"></el-col>
    <el-col :xs="8" :sm="6" :md="4" :lg="3" :xl="1"></el-col>
  </el-row>
  <!-- 购物车开始 -->
  <div id="shopping">
    <!-- 标题开始 -->
    <div class="title">
      <h3>购物车
        <i style="padding: 0px 15px">/</i>
        <i class="el-icon-shopping-cart-1"></i>
      </h3>
      <!-- <h3><el-breadcrumb>
        <el-breadcrumb-item :to="{ path: '/' }">首页</el-breadcrumb-item>
        <el-breadcrumb-item>购物车</el-breadcrumb-item>
        <el-breadcrumb-item>
          <i class="el-icon-shopping-cart-1"></i>
        </el-breadcrumb-item>
      </el-breadcrumb></h3> -->
    </div>
    <!-- 标题结束 -->
    <!-- 购物车主体开始 -->
    <div id="trunk">
      <!-- 购物车会有两种形态：空购物车    有商品详情的购物车 -->
      <!-- 购物车详情开始    非空购物车样式选择trunk2 -->
      <div id="trunk2">
          <!-- 购物车有商品开始 -->
        <!-- 购物车标题名称开始 -->
        <div class="title">
          <div class="th">
            <table class="tab">
              <tr>
                <th style="width: 32%">商品</th>
                <th style="width: 20%">单价</th>
                <th style="width: 20%">数量</th>
                <th style="width: 28%">金额</th>
                <th></th>
              </tr>
            </table>
          </div>
        </div>
        <!-- 购物车标题名称结束 -->
        <!-- 购物车商品详细信息开始 -->
        <div class="details">
          <!-- 详情容器开始  图片、名称 -->
          <div style="cont">
            <table class="tab-list">
              <tr>
                <td style="width: 6% "></td>
                <td style="margin: 0 auto; ">
                  <img class="pg" src="https://mall.christine.com.cn/public/images/b4/ec/e3/4ea6c159461336ad9a767a4e45e02b55ca7f3adf.jpg?1548057230#h" alt="">
                </td>
                <td class="title">
                  <div>
                    <el-badge value="new" class="item">仲夏夜之梦
                    </el-badge>
                  </div>
                  <div>尺寸：6英寸</div>
                </td>
              </tr>
            </table>
            <!-- 分割线 -->
            <el-divider></el-divider>
            <table class="tab-list">
              <tr id="prc">
                <td style="width: 6% "></td>
                <td style="margin: 0 auto; ">
                    <img class="pg" src="https://mall.christine.com.cn/public/images/74/15/3c/ee7b46ebf0ac4c9e337a4a73c4bd6513ff13b12f.jpg?1548237891#h" alt="">
                </td>
                <td class="title">
                  <div>
                    <el-badge value="new" class="item">萌萌熊
                    </el-badge>
                  </div>
                  <div>尺寸：6英寸</div>
                </td></tr>
            </table>
          </div>
          <!-- 详情容器结束   图片、名称-->
          <!-- 详情容器结束   单价、数量、金额-->
          <div style="cont1; width: width: 500px;  margin-top:-410px">
            <table  class="tab-right;">
              <el-main v-for="good in goods" :label="good.name" :key="good.id">
                <div style="width:800px; margin-left: 480px; margin-top:120px">
                  <span style="margin-right:200px;display:inline-block">{{good.price}} 元</span>
                  <span style="margin-right:190px;display:inline-block"><el-input-number v-model="good.num" @change="handleChangeNum(good.id)" value="1" :min="1" size="small"></el-input-number></span>
                  <span style="margin-right:-10px;color:red"> {{good.OnePrice}}元</span>
                  <el-popconfirm  title="确定删除该商品吗？">
                    <el-button style="margin-left: 60px " slot="reference" icon="el-icon-close" size="mini" circle></el-button>
                  </el-popconfirm>
                </div>
              </el-main>
            </table>
          </div>
          <!-- 详情容器结束   单价、数量、金额-->
        </div>
        <!-- 购物车商品详细信息结束 -->
        <!-- 结算商品--开始 -->
        <div class="details"  style="display: flex; height: 220px;">
          <!-- 全部删除 -->
            <div class="title" style="margin:40px; width: 300px; ">
              <el-button plain style="cbut" >
              <i class="el-icon-delete"></i>
              <span style="padding-left:15px">全部删除</span>
              </el-button>
            </div>
            <!-- 下单结算 -->
            <div id="pr-right"  class="title">
              <p>商品金额：￥  {{ allPrice.toFixed(2) }}</p>
              <p>优惠活动：￥  {{0.00}}</p>
              <el-divider></el-divider>
              <div class="money">合计：￥  {{ allPrice.toFixed(2) }}</div>
              <p class="but">下单结算</p>
            </div>
        </div>
        <!-- 结算商品--结束 -->
      </div>
      <!-- 购物车详情结束 -->
      
      <!-- 空购物车开始     购物车为空时默认显示trunk1 -->
        <!-- <div id="trunk1">
          <img src="../assets/shopping.png" alt="">
          <p>您还没有选择商品</p>
          <el-link type="danger" href="/"><h4>去购物 >></h4></el-link>
        </div> -->
      <!-- 空购物车结束 -->

    </div>
    <!-- 购物车主体结束 -->
  </div>
  <!-- 购物车结束 -->
</div>
</template>

<script>
export default {
    data() {
        return {
          num:1,
             goods: [
                {
                    id: 10,
                    price: 188
                },
                {
                    id: 11,
                    price: 188
                },
                
            ],
            allPrice: 0
        };
    },
     methods: {
      //  单价
      handleChangeNum(val) {
            this.goods.filter((it, id) => {
                if (it.id == val) {
                  // let num = it.num
                    it.OnePrice = it.num * it.price;
                }
            });
            this.getAllPrice();
        },
        // 总金额
        getAllPrice() {
            //获取总价方法封装
            let money = 0;
            this.goods.filter((it, id) => {
                if (it.OnePrice) {
                    money += it.OnePrice;
                }
            });
            this.allPrice = money;
        },

    },
    mounted(){
      
    },
}
</script>

<style>
/* .el-col {
    border-radius: 4px;
  } */
#shopping{
    width: 85%;
    margin: 0 auto;
}
.title{
    /* width: 300px; */
    color: #791a1e;
    text-align: left;
}
.trunk{
    margin: 0 auto;
    /* padding: 80px 50px; */

}
.trunk1{
    margin: 0 auto;
    padding: 10px 10px;
    width: 95%;
}
.tab{
  display: block;
  width: 100%;
  padding-left: 55px;
}
.th{
  width: 100%;
  margin: 0 auto;
  padding: 0 20px;
  height: 60px;
  border: 0.5px solid #ccc;
  background-color: #f7f8f8;
}
.item{
  margin-top: 20px;
  margin-right: 70px;
}
.tab tr{
  height: 60px;
  text-align: center;
  vertical-align: middle;
}
.cont{
  position: absolute;
}
.cont1{
  /* position: fixed; */
  position: absolute;
  margin-top: 50px;
  width: 600px;
}
.tab-list{
  padding: 25px 0 ;
  width: 400px;
}
.tab-list td{
  width: 50%;
}
.tab-right{
  z-index: 100;
}
.details{
  position: relative;
  margin: 20px auto;
  padding: 20px 20px;
  width: 100%;
  height: 330px;
  border: 0.5px solid #ccc;
}
/* .teb tr td{
  text-align: left;
  display: flex;
  float: right;
} */
.pg{
  padding-right: 10px;
  width: 80px;
  height: 80px;
}
#pr-right{
  margin-left: 520px;
  margin-right: 40px;
  width: 320px;
  text-align: right;
}
.cbut{
  color: #791a1e;
}
.but{
  display: block;
  width: 100%;
  height: 30px;
  padding-top: 10px;
  color: #fff;
  text-align: center;
  background-color: #791a1e;
}
.money{
  color: #f00;
}
</style>