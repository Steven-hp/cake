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
        <!-- 标题 -->
        <div class="title">
          <h3>购物车<i>/</i><i class="el-icon-shopping-cart-1"></i></h3>
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
        <!-- 购物车为空时默认显示空购物车trunk1 -->
        <div id="trunk">
            <!-- 空购物车 -->
            <div id="trunk1">
              <img src="../assets/shopping.png" alt="">
              <p>您还没有选择商品</p>
              <el-link type="danger" href="/"><h4>去购物 >></h4></el-link>
            </div>
            <!-- 空购物车结束 -->
            <!-- 购物车有商品时样式选择trunk2 -->
            <div id="trunk2" class="title">
              <!-- 表头行-名称开始 -->
                <div class="th">
                  <table class="tab" style="width: 100% display: block;">
                    <tr>
                      <th style="width: 45%">商品</th>
                      <th style="width: 15%">单价</th>
                      <th style="width: 15%">数量</th>
                      <th style="width: 25%">金额</th>
                      <th></th>
                    </tr>
                  </table>
                </div>
              <!-- 表头行-名称结束 -->
            </div>
            <!-- 购物车商品详细信息--开始 -->
            <div class="details">
              <table class="tab" style="width: 85% display: block; margin-left: 50px;">
                    <tr>
                      <td style="margin: 0 auto; ">
                        <img class="pg" src="https://mall.christine.com.cn/public/images/b4/ec/e3/4ea6c159461336ad9a767a4e45e02b55ca7f3adf.jpg?1548057230#h" alt="">
                      </td>
                      <td class="title" style="width: 50% padding-left: 15px;">
                        <p>仲夏夜之梦</p>
                        <p>尺寸：6英寸</p>
                      </td>
                      <td style="width: 16%">￥ 188.00</td>
                      <td style="width: 17%">
                        <el-input-number v-model="num" @change="handleChange" :min="1" :max="10" label="描述文字" size="small"></el-input-number>
                      </td>
                      <td style="width: 16%">金额</td>
                      <th style="width: 5%">
                        <el-popconfirm  title="确定删除该商品吗？">
                          <el-button slot="reference" icon="el-icon-close" size="mini" circle></el-button>
                        </el-popconfirm>
                      </th>
                    </tr>
                  </table>
                  <el-divider></el-divider>
                  <table class="tab" style="width: 85% display: block; margin-left: 50px;">
                    <tr>
                      <td style="margin: 0 auto; ">
                        <img class="pg" src="https://mall.christine.com.cn/public/images/74/15/3c/ee7b46ebf0ac4c9e337a4a73c4bd6513ff13b12f.jpg?1548237891#h" alt="">
                      </td>
                      <td class="title" style="width: 50% padding-left: 15px;">
                        <p>仲夏夜之梦</p>
                        <p>尺寸：6英寸</p>
                      </td>
                      <td style="width: 16%">￥ 188.00</td>
                      <td style="width: 17%">
                        <el-input-number v-model="num" @change="handleChange" :min="1" :max="10" label="描述文字" size="small"></el-input-number>
                      </td>
                      <td style="width: 16%">金额</td>
                      <th style="width: 5%">
                        <el-popconfirm  title="确定删除该商品吗？">
                          <el-button slot="reference" icon="el-icon-close" size="mini" circle></el-button>
                        </el-popconfirm>
                      </th>
                    </tr>
                  </table>
            </div>
            <!-- 购物车商品详细信息--结束 -->
            <!-- 结算商品--开始 -->
            <div class="details"  style="display: flex; height: 220px;">
                <div class="title" style="margin:50px; ">
                  <i class="el-icon-delete"></i>
                  <span>全部删除</span>
                </div>
              <div id="pr-right"  class="title">
                <p>商品金额：</p>
                <p>优惠活动：</p>
                <el-divider></el-divider>
                <p>合计：</p>
                <el-button  type="danger" plain>下单结算</el-button>
              </div>
            </div>
            <!-- 结算商品--结束 -->
        </div>
    </div>
<!-- 购物车结束 -->
</div>
</template>

<script>
export default {
    data() {
        return {
            num: 1
        };
    },
     methods: {
      handleChange(value) {
        console.log(value);
      }
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
.th{
  width: 100%;
  margin: 0 auto;
  height: 60px;
  border: 1px solid #666;
  background-color: #f7f8f8;
}
.tab tr{
  height: 60px;
  text-align: center;
  vertical-align: middle;
}
.details{
  margin: 20px auto;
  width: 100%;
  border: 1px solid #666;
}
.teb tr td{
  text-align: left;
  display: flex;
  float: right;
}
.pg{
  margin-right: 30px;
  width: 80px;
  height: 80px;
}
#pr-right{
  margin-left: 570px;
  margin-right: 40px;
  width: 200px;

}
</style>