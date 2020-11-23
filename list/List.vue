<template>
  <div class="contentBox">
    <!-- 分类 -->
    <div class="proListFilter">
      <dl>
        <dt>分类：</dt>
        <dd><a  @click="quanbu()">全部分类</a></dd>
        <dd>
          <a  @click="dangao()">蛋糕</a>
        </dd>
        <dd><a  @click="bingjiling()">冰淇淋</a></dd>
        <dd>
          <a  @click="xiawucha()">咖啡下午茶</a>
        </dd>
        <dd><a >常温蛋糕</a></dd>
        <dd><a >设计师礼品</a></dd>
        <dd>
          <a  @click="mianbao()">面包</a>
        </dd>
      </dl>
      <!-- 口味 -->
      <dl>
        <dt>口味：</dt>
        <dd>
          <a href="">全部口味</a>
        </dd>
        <dd><a href="">乳脂奶油</a></dd>
        <dd><a href="">慕斯</a></dd>
        <dd><a href="">乳酪</a></dd>
        <dd><a href="">巧克力</a></dd>
        <dd><a href="">坚果</a></dd>
        <dd><a href="">水果</a></dd>
        <dd><a href="">咖啡</a></dd>
        <dd><a href="">冰淇淋</a></dd>
        <dd><a href="">应季</a></dd>
      </dl>
    </div>
    <!-- 商品列表 -->
    <div class="listPro">
      <!-- 单个商品 -->
      <div class="proListSu" v-for="(product, index) of products" :key="index">
        <!-- 图片 -->
        <a href="" v-if="product.pro_imgs_url !=null">
          <img :src = "product.pro_imgs_url" />
        </a>
        <!-- 名称 -->
        <h3>{{ product.pro_name }}</h3>
        <!-- 价格 -->
        <span>¥{{ product.pro_price }}/454g(1.0磅)</span>
        <!-- 推荐 -->
        <div class="labelEntrance">
          <a href="">新品 &gt;</a><a href="">当季推荐 &gt;</a>
        </div>
        <!-- 加入购物车 -->
        <a href="" name="pro-list-addcart_1412" class="proListAddcart"
          ><i></i>加入购物车</a
        >
      </div>
    </div>
  </div>
</template>
<style scoped>
a {
  text-decoration: none;
  color: #684029;
}
.contentBox {
  width: 1200px;
  margin: 0 auto;
  padding-bottom: 50px;
  font-family: "PingFang SC", "Heiti SC", "微软雅黑", Helvetica, Arial;
  font-size: 12px;
  color: #684029;
  overflow: hidden;
}
.proListFilter {
  font-size: 13px;
  margin-top: 25px;
  margin-bottom: 35px;
  width: 1200px;
  border-top: #f2f2f2 solid 1px;
  border-bottom: #f2f2f2 solid 1px;
  overflow: hidden;
  padding: 8px 0;
}
dl {
  display: flex;
  line-height: 50px;
  overflow: hidden;
  height: 50px;
}
.proListSu {
  width: 228px;
  text-align: center;
  height: 364px;
  position: relative;
  padding: 0 18px;
  margin: 0 18px;
  overflow: hidden;
}
.proListSu img {
  width: 228px;
  height: 246px;
}
.proListSu span {
  display: block;
  color: #bb9772;
  line-height: 18px;
  margin-top: 5px;
  font-size: 13px;
}
.proListSu h3 {
  font-size: 13px;
  line-height: 20px;
}
.labelEntrance a {
  display: inline-block;
  border: 1px solid #d5bfa7;
  border-radius: 100px;
  padding: 0 6px 0 8px;
  color: #d5bfa7;
  margin: 8px 3px;
}
.proListAddcart {
  position: absolute;
  top: 315px;
  display: inline-block;
  width: 107px;
  left: 78px;
  line-height: 60px;
  margin-top: 12px;
  background: none;
  font-size: 13px;
  color: #684029;
  text-decoration: none;
  outline: none;
  cursor: pointer;
}
.listPro {
  display: flex;
  flex-wrap: wrap;
}
</style>
<script>
export default {
  data() {
    return {
      //存储服务器返回商品信息的分类数据
      products: [],
    };
  },
  methods:{
    quanbu(){
      this.products = [];
    //修改busy变量的值
      this.busy=false;
    //通过axios工具向web服务器发送请求以获取文炸房数据
       this.axios.get("/products?pro_tid=" + '1 || 2 || 3 || 4').then((res)=>{
      //获取服务器返回的数据 -- 数组
        let data = res.data.results;
        //数组的遍历,此时的item代表的是组成数组的每一个object
        //每一个object都包含id,subject,description及image属性
        data.forEach((item) => {
          //在文章的图片不为空的情况下才动态加载
          if (item.pro_imgs_url != null) {
            //属性重新赋值
            item.pro_imgs_url = require("../assets/list/" + item.pro_imgs_url);
          }
          //现在在无论是否图片为空都添加到以articles数组中了
          this.products.push(item);
        });
        //关闭加载提示框
        //this.$indicator.close();
        //修改busy变量的值
        this.busy = false;
      }) 
    },
    dangao(){
      this.products = [];
      //修改busy变量的值
      this.busy=false;
    //通过axios工具向web服务器发送请求以获取文炸房数据
       this.axios.get('/products?pro_tid=' + 1).then((res)=>{
      //获取服务器返回的数据 -- 数组
        let data = res.data.results;
        //数组的遍历,此时的item代表的是组成数组的每一个object
        //每一个object都包含id,subject,description及image属性
        data.forEach((item) => {
          //在文章的图片不为空的情况下才动态加载
          if (item.pro_imgs_url != null) {
            //属性重新赋值
            item.pro_imgs_url = require("../assets/list/" + item.pro_imgs_url);
          }
          //现在在无论是否图片为空都添加到以articles数组中了
          this.products.push(item);
        });
        //关闭加载提示框
        //this.$indicator.close();
        //修改busy变量的值
        this.busy = false;
      });
    },
    mianbao(){
      this.products = [];
      //修改busy变量的值
      this.busy=false;
    //通过axios工具向web服务器发送请求以获取文炸房数据
       this.axios.get('/products?pro_tid=' + '2').then((res)=>{
      //获取服务器返回的数据 -- 数组
        let data = res.data.results;
        //数组的遍历,此时的item代表的是组成数组的每一个object
        //每一个object都包含id,subject,description及image属性
        data.forEach((item) => {
          //在文章的图片不为空的情况下才动态加载
          if (item.pro_imgs_url != null) {
            //属性重新赋值
            item.pro_imgs_url = require("../assets/list/" + item.pro_imgs_url);
          }
          //现在在无论是否图片为空都添加到以articles数组中了
          this.products.push(item);
        });
        //关闭加载提示框
        //this.$indicator.close();
        //修改busy变量的值
        this.busy = false;
      });
    },
    bingjiling(){
      this.products = [];
      //修改busy变量的值
      this.busy=false;
    //通过axios工具向web服务器发送请求以获取文炸房数据
       this.axios.get('/products?pro_tid=' + '3').then((res)=>{
      //获取服务器返回的数据 -- 数组
        let data = res.data.results;
        //数组的遍历,此时的item代表的是组成数组的每一个object
        //每一个object都包含id,subject,description及image属性
        data.forEach((item) => {
          //在文章的图片不为空的情况下才动态加载
          if (item.pro_imgs_url != null) {
            //属性重新赋值
            item.pro_imgs_url = require("../assets/list/" + item.pro_imgs_url);
          }
          //现在在无论是否图片为空都添加到以articles数组中了
          this.products.push(item);
        });
        //关闭加载提示框
        //this.$indicator.close();
        //修改busy变量的值
        this.busy = false;
      });
    },
    xiawucha(){
      this.products = [];
      //修改busy变量的值
      this.busy=false;
    //通过axios工具向web服务器发送请求以获取文炸房数据
       this.axios.get('/products?pro_tid=' + '4').then((res)=>{
      //获取服务器返回的数据 -- 数组
        let data = res.data.results;
        //数组的遍历,此时的item代表的是组成数组的每一个object
        //每一个object都包含id,subject,description及image属性
        data.forEach((item) => {
          //在文章的图片不为空的情况下才动态加载
          if (item.pro_imgs_url != null) {
            //属性重新赋值
            item.pro_imgs_url = require("../assets/list/" + item.pro_imgs_url);
          }
          //现在在无论是否图片为空都添加到以articles数组中了
          this.products.push(item);
        });
        //关闭加载提示框
        //this.$indicator.close();
        //修改busy变量的值
        this.busy = false;
      });
    },
  },
}
</script>
