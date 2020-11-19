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
      <h3><el-breadcrumb>
        <el-breadcrumb-item :to="{ path: '/' }">首页</el-breadcrumb-item>
        <el-breadcrumb-item>购物车</el-breadcrumb-item>
        <el-breadcrumb-item>
          <i class="el-icon-shopping-cart-1"></i>
        </el-breadcrumb-item>
      </el-breadcrumb></h3>
    </div>
    <!-- 标题结束 -->
    <!-- 购物车主体开始 -->
    <div id="trunk">
      <!-- 购物车会有两种形态：空购物车    有商品详情的购物车 -->
      <!-- 空购物车开始     购物车为空时默认显示trunk1 -->
      <div id="trunk1">
        <img src="../assets/shopping.png" alt="">
        <p>您还没有选择商品</p>
        <el-link type="danger" href="/"><h4>去购物 >></h4></el-link>
      </div>
      <!-- 空购物车结束 -->
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
          <!-- 详情容器开始 -->
          <table class="tab">
            <tr>
              <td style="width: 6% "></td>
              <td style="margin: 0 auto; ">
                <img class="pg" src="https://mall.christine.com.cn/public/images/b4/ec/e3/4ea6c159461336ad9a767a4e45e02b55ca7f3adf.jpg?1548057230#h" alt="">
              </td>
              <td class="title" style="width: 20% ">
                <div>
                  <el-badge value="new" class="item">仲夏夜之梦
                  </el-badge>
                </div>
                <div>尺寸：6英寸</div>
              </td>
              <td style="width: 20%">
                <div id="unit">￥ {{188.00}}</div>
              </td>
              <td style="width: 28%">
                <el-input-number v-model="num" @change="handleChange" :min="1" size="small">{{1}}</el-input-number>
              </td>
              <td style="width: 20%">
                <div class="money">￥  {{188.00}}</div>
              </td>
              <td style="width: 10%">
                <el-popconfirm  title="确定删除该商品吗？">
                  <el-button slot="reference" icon="el-icon-close" size="mini" circle></el-button>
                </el-popconfirm>
              </td>
            </tr>
          </table>
          <!-- 详情容器结束 -->
          <!-- 分割线 -->
          <el-divider></el-divider>
          <!-- 详情容器开始 -->
          <table class="tab">
            <tr id="prc">
              <td style="width: 6% "></td>
              <td style="margin: 0 auto; ">
                  <img class="pg" src="https://mall.christine.com.cn/public/images/74/15/3c/ee7b46ebf0ac4c9e337a4a73c4bd6513ff13b12f.jpg?1548237891#h" alt="">
              </td>
              <td class="title" style="width: 20%;">
                <div>
                  <el-badge value="new" class="item">萌萌熊
                  </el-badge>
                </div>
                <div>尺寸：6英寸</div>
              </td>
              <td style="width: 20%">
                <div>￥  {{188.00}}</div>
              </td>
              <td style="width: 28%">
                <el-input-number v-model="num1" @change="handleChange" :min="1" size="small">{{1}}</el-input-number>
              </td>
              <td style="width: 20%">
                <div class="money">￥  {{188.00}}</div>
              </td>
              <th style="width: 10%">
                <el-popconfirm  title="确定删除该商品吗？">
                  <el-button slot="reference" icon="el-icon-close" size="mini" circle></el-button>
                </el-popconfirm>
              </th>
            </tr>
          </table>
          <!-- 详情容器结束 -->
        </div>
        <!-- 购物车商品详细信息结束 -->
        <!-- 结算商品--开始 -->
        <div class="details"  style="display: flex; height: 220px;">
            <div class="title" style="margin:40px; width: 300px; ">
              <i class="el-icon-delete"></i>
              <span style="padding-left:15px">全部删除</span>
            </div>
          <div id="pr-right"  class="title">
            <p>商品金额：￥  {{188.00}}</p>
            <p>优惠活动：￥  {{188.00}}</p>
            <el-divider></el-divider>
            <div class="money">合计：￥  {{188.00}}</div>
            <p class="but">下单结算</p>
          </div>
        </div>
        <!-- 结算商品--结束 -->
      </div>
      <!-- 购物车详情结束 -->
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
            num: 1,
            num1: 1,
        };
    },
     methods: {
      handleChange(value) {
        // console.log(value);
      },
      // deleteRow(index, rows) {
      //   rows.splice(index, 1);
      //   tr.rowIndex
      // },

    },
    mounted(){
      let unit = parseInt(document.getElementById('unit').innerHTML.slice(1));
      console.log(unit);
      
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
.details{
  margin: 20px auto;
  padding: 20px 20px;
  width: 100%;
  border: 0.5px solid #ccc;
}
/* .teb tr td{
  text-align: left;
  display: flex;
  float: right;
} */
.pg{
  margin-right: 10px;
  width: 80px;
  height: 80px;
}
#pr-right{
  margin-left: 480px;
  margin-right: 40px;
  width: 320px;
  text-align: right;
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