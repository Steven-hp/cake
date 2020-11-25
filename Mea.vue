<template>
  <div style="margin: 0 auto; width: 90%; align:center;">
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
        width="680">
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
            <button @click="del(scope.row)">-</button>
            <span style="width:5px" @change="handleInput(scope.row)">
              {{ scope.row.number }}</span>
            <button @click="add(scope.row)">+</button>
          </div>
        </template>
      </el-table-column>
      <el-table-column
        label="小计"
        width="150"
        prop="goodTotal">
        <template  scope="scope">
          <span @change="goodsTotal(scope.row)">{{ scope.row.goodTotal }}</span>
        </template>
      </el-table-column>
      <el-table-column label="操作">
        <template scope="scope">
          <el-button icon="el-icon-close" size="mini" @click="handleDelete(scope.$index, scope.row)">
          删除<i class="el-icon-delete2 el-icon--right"></i>
          </el-button> 
        </template>
      </el-table-column>
    </el-table>
    <br>
    <div id="pr-right"  class="title">
      <!-- <p>商品金额：￥  {{ allPrice.toFixed(2) }}</p> -->
      <p>优惠活动：￥  {{0.00}}</p>
      <el-divider></el-divider>
      <div class="money">合计：￥  {{"商品总额：" + moneyTotal.toFixed(2) }}</div>
      <p class="but">下单结算</p>
    </div>
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
      }
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
        var number = this.number = delGood.number;
        console.log(number);
      },
      handleInput:function(value){
        if(null==value.number || value.number==""){
          var number = value.number=goods.number;
          console.log(number);
        }
        // goodTotal=(scope.row.number * parseInt(goods.price)).toFixed(2);//保留两位小数
        console.log(value.number);
        //增加商品数量也需要重新计算商品总价
        this.selected(this.multipleSelection);
      },
      goodsTotal:function(){
        console.log(this.number);
        console.log(scope.row.goodsTotal);
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

