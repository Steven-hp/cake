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
    </div>
    <!-- 标题结束 -->
    <!-- 购物车主体开始 -->
    <div id="trunk">
      <!-- 购物车会有两种形态：空购物车    有商品详情的购物车 -->
      <!-- 购物车详情开始    非空购物车样式选择trunk2 -->
      <div id="trunk2" >
          <!-- 购物车有商品开始 -->
        <!-- 购物车标题名称开始 -->
        <!-- <div class="title">
          <div class="th">
            <table class="tab">
              <tr>
                <th style="width: 32%">商品</th>
                <th style="width: 20%">单价</th>
                <th style="width: 20%">购买数量</th>
                <th style="width: 28%">金额</th>
                <th></th>
              </tr>
            </table>
          </div>
        </div> -->
        <!-- 购物车标题名称结束 -->
        <!-- 购物车商品详细信息开始 -->
        <div class="details">
          <!-- 详情容器开始   -->
          <!-- <div style="margin: 0 auto; width: 100%; align:center;"> -->
            <el-table
              :data="tableData"
              border
              style="width: 100%;"
              @selection-change="selected">
              <el-table-column
                type="selection"
                width="50">
              </el-table-column>
              <el-table-column
                label="商品名称"
                width="620">
                <template scope="scope">
                  <span style="margin-left: 50px; height: 90px;">
                    <img :src="scope.row.goods.img" style="height: 80px;width: 80px">
                  </span>
                  <div style="font-size: 16px;margin-top:-60px; padding-left: 190px;">
                    <!-- <span style="font-size: 18px;padding-left: 90px;"> -->
                      <el-badge value="new" style="padding-top:10px; padding-right:10px">
                        <p style="margin-top:-10px;">{{scope.row.goods.descript}}</p>
                      </el-badge>
                      <p style="margin-top:-20px;">尺寸：{{scope.row.goods.size}}</p>
                    <!-- </span> -->
                  </div>
                </template>
              </el-table-column>
              <el-table-column
                label="单价"
                width="150"
                prop="price">
              </el-table-column>
              <el-table-column
                label="数量"
                width="200">
                <template scope="scope">
                  <div style="width:75%">
                    <el-input size="mini" 
                      v-model="scope.row.number" @change="handleInput(scope.row)">
                      <el-button size="mini" slot="prepend" @click="del(scope.row)"><i class="el-icon-minus"></i></el-button>
                      <el-button size="mini" slot="append" @click="add(scope.row)"><i class="el-icon-plus"></i></el-button>
                    </el-input>
                  </div>
                </template>
              </el-table-column>
              <el-table-column
                label="小计"
                width="150"
                prop="goodTotal">
                <!-- <span>{{goods.number * goods.price}}</span> -->
              </el-table-column>
              <el-table-column label="操作">
                <template scope="scope">
                  <el-button icon="el-icon-close" size="mini" @click="handleDelete(scope.$index, scope.row)">
                  删除<i class="el-icon-delete2 el-icon--right"></i>
                  </el-button> 
                </template>
              </el-table-column>
            </el-table>
          <!-- </div> -->
          <!-- 详情容器结束   -->
        </div>
        <!-- 购物车商品详细信息结束 -->
        <!-- 结算商品--开始 -->
        <div class="details"  style="display: flex; height: 180px;">
          <!-- 全部删除 -->
            <div class="title" style="margin:40px; width: 300px; ">
              <el-button plain class="cbut" >
              <i class="el-icon-delete"></i>
              <span style="padding-left:10px">全部删除</span>
              </el-button>
            </div>
            
            <!-- 下单结算 -->
            <div id="pr-right"  class="title">
              <!-- <p>商品金额：￥  {{ allPrice.toFixed(2) }}</p> -->
              <p>优惠活动：￥  {{0.00}}</p>
              <el-divider></el-divider>
              <div class="money">合计：￥  {{ moneyTotal.toFixed(2) }}</div>
              <p class="but">下单结算</p>
            </div>
        </div>
        <!-- 结算商品--结束 -->
      </div>
      <!-- 购物车详情结束 -->
      
      <!-- 空购物车开始     购物车为空时默认显示trunk1 -->
        <div id="trunk1">
          <div class="title">
            <!-- 空购物车标题  开始 -->
            <h3><el-breadcrumb>
              <el-breadcrumb-item :to="{ path: '/' }">首页</el-breadcrumb-item>
              <el-breadcrumb-item>购物车</el-breadcrumb-item>
              <el-breadcrumb-item>
                <i class="el-icon-shopping-cart-1"></i>
              </el-breadcrumb-item>
            </el-breadcrumb></h3>
            <!-- 空购物车标题  结束 -->
          </div>
          <img src="../assets/shopping.png" alt="">
          <p>您还没有选择商品</p>
          <el-link type="danger" href="/"><h4>去购物 >></h4></el-link>
        </div>
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
            tableData: [{
                goods:{
                  img:'https://mall.christine.com.cn/public/images/b4/ec/e3/4ea6c159461336ad9a767a4e45e02b55ca7f3adf.jpg?1548057230#h',
                  descript:'玫瑰密语',
                  size:"6英寸",
                },
                price:188,
                number:1,
                goodTotal:188,
              },{
                goods:{
                  img:'https://mall.christine.com.cn/public/images/74/15/3c/ee7b46ebf0ac4c9e337a4a73c4bd6513ff13b12f.jpg?1548237891#h',
                  descript:'萌萌熊',
                  size:"6英寸",
                },
                price:188,
                number:1,
                goodTotal:188, 
              }],
              moneyTotal:0,
              multipleSelection:[],
        };
    },
    methods: {
      handleDelete(index, row) {
        this.$confirm('确定删除该商品？', '提示', {
          confirmButtonText: '确定',
          cancelButtonText: '取消',
          type: 'warning'
        }).then(() => {
          //删除数组中指定的元素
          this.tableData.splice(index,1);
          this.$message({
            type: 'success',
            message: '删除成功!'
          });
        }).catch(() => {
          this.$message({
            type: 'info',
            message: '已取消删除'
          });          
        });
      },
      add:function(addGood){
        //输入框输入值变化时会变为字符串格式返回到js
        //此处要用v-model，实现双向数据绑定
        if(typeof addGood.number=='string'){
          addGood.number=parseInt(addGood.number);
        };
        addGood.number+=1;
        this.number = addGood.number;
        // var totale = goods.price * goods.number;
        // console.log(totale);
        var number = this.number = addGood.number;
        console.log(number);
      },
      del:function(delGood){
        if(typeof delGood.number=='string'){
          delGood.number=parseInt(delGood.number);
        };
        if(delGood.number>1){
          delGood.number-=1;
        };
        this.number =delGood.number
        var number = this.number = delGood.number;
        console.log(number);
      },
      handleInput:function(value){
        // if(null==value.number || value.number==""){
        //   value.number=goods.number;
        // }
        value.goodTotal=(scope.row.number*goods.price).toFixed(2);//保留两位小数
        console.log(value.goodTotal);
        //增加商品数量也需要重新计算商品总价
        this.selected(this.multipleSelection);
      },
      
      //返回的参数为选中行对应的对象
      selected:function(selection){
        this.multipleSelection=selection;
        this.moneyTotal=0;
        //此处不支持forEach循环，只能用原始方法了
        for(var i=0;i<selection.length;i++){
          //判断返回的值是否是字符串
          if(typeof selection[i].goodTotal=='string'){
            selection[i].goodTotal=parseInt(selection[i].goodTotal);
          };
          this.moneyTotal+=selection[i].goodTotal;
        }
      },
    },
    mounted(){
      
    },
}
</script>

<style>

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
    width: 80px;
    height: 80px;
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
  text-align: center;
}
.th{
  width: 100%;
  margin: 0 auto;
  padding: 10px 20px;
  height: 60px;
  line-height: 60px;
  border: 0.5px solid #ccc;
  background-color: #f7f8f8;
}
.details{
  /* position: relative; */
  margin: 20px auto;
  padding: 20px 20px;
  width: 100%;
  border: 0.5px solid #ccc;
}
.title_g{
  width: 150px;
  color: #791a1e;
  text-align: left;
}
.goods{
  height: 110px; 
  margin: 0 auto;
  padding-bottom: 15px;
  border-bottom: 0.1px solid #ccc;
}
.pg{
  margin: 0;
  margin-left: 90px;
  padding-bottom: 30px;
  width: 80px;
  height: 80px;
}
.pg_img{
  width: 80px;
  height: 80px;
}
.prc_blo{
  display: block;
  margin: -25px 10px;
  width: 100px;
}
#pr-right{
  margin-left: 520px;
  margin-right: 40px;
  width: 320px;
  text-align: right;
}
/* .cbut{
  align:center;
  display: flex;
  color: #791a1e;
  justify-content: space-between;  //flex-start;
} */
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