<template>
  <div class="contentBox">
    <!-- 分类 -->
    <div class="proListFilter">
      <span>分类：</span>
      <ul class="dl" @click="quanbu">
        <li value="0" @click="quanbus">全部分类</li>
        <li value="1">蛋糕</li>
        <li value="3">冰淇淋</li>
        <li value="4">咖啡下午茶</li>
        <li value="2">面包</li>
      </ul>
    </div>
      <!-- 口味 -->
      <div class="proListFilters">
      <span>口味：</span>
      <ul class="dl" ref='box' @click="kouwei">
        <li value="0" @click="kouweis">全部口味</li>
        <li value="1">乳脂奶油</li>
        <li value="2">慕斯</li>
        <li value="3">乳酪</li>
        <li value="4">巧克力</li>
        <li value="5">坚果</li>
        <li value="6">水果</li>
      </ul>
      </div>
    <!-- 商品列表 -->
    <div class="listPro">
      <!-- 单个商品 -->
      <div class="proListSu" v-for="(product, index) of products" :key="index">
        <!-- 图片 -->
        <div v-if="product.pro_imgs_url !=null">
          <img @click="details(product)" v-lazy = "product.pro_imgs_url" />
        </div>
        <!-- 名称 -->
        <h3>{{ product.pro_name }}</h3>
        <!-- 价格 -->
        <span>¥{{ product.pro_price }}/454g(1.0磅)</span>
        <!-- 推荐 -->
        <div class="labelEntrance">
          <a href="">新品 &gt;</a><a href="">当季推荐 &gt;</a>
        </div>
        <!-- 加入购物车 -->
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
  width: 1200px;
  border-top: #f2f2f2 solid 1px;
  overflow: hidden;
  padding: 8px 0;
  display: flex;
  line-height: 50px;
}
.proListFilters {
  font-size: 13px;
  margin-bottom: 35px;
  width: 1200px;
  border-bottom: #f2f2f2 solid 1px;
  overflow: hidden;
  padding: 8px 0;
  display: flex;
  line-height: 25px;
}
.dl {
  display: flex;
  list-style: none;
  margin: 0;
}
.dl li{
  height: 50px;
  margin: 0 13px;
  cursor:pointer;
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
      busy: false,
    };
  },
  mounted(){
    this.products = [];
    //修改busy变量的值
      this.busy=false;
    //通过axios工具向web服务器发送请求以获取文炸房数据
       this.axios.get("/productse").then((res)=>{
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
  methods:{
    quanbu(event){
      this.products = [];
      if((event.target.value == 2) || (event.target.value == 3) || (event.target.value == 4) ){
        this.$refs.box.style.color = '#BBC1D2'
      }else if(event.target.value == 1){
        this.$refs.box.style.color = '#684029'
      }else if(event.target.value == 0){
        this.$refs.box.style.color = '#684029'
        this.quanbus()
      }
      
      let id = event.target.value;
    //修改busy变量的值
      this.busy=false;
    //通过axios工具向web服务器发送请求以获取文炸房数据
       this.axios.get("/products?pro_tid=" + id).then((res)=>{
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
    quanbus(){
      this.products = [];
      //修改busy变量的值
      this.busy=false;
    //通过axios工具向web服务器发送请求以获取文炸房数据
       this.axios.get("/productse").then((res)=>{
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
    kouwei(event){
      this.products = [];
      if(event.target.value == 0){
        this.kouweis()
      }
      
      let id = event.target.value;
    //修改busy变量的值
      this.busy=false;
    //通过axios工具向web服务器发送请求以获取文炸房数据
       this.axios.get("/productd?pro_categories=" + id).then((res)=>{
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
    kouweis(){
      this.products = [];
      let id = 1;
    //修改busy变量的值
      this.busy=false;
    //通过axios工具向web服务器发送请求以获取文炸房数据
       this.axios.get("/products?pro_tid=" + id).then((res)=>{
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
    details(product){
      this.$router.push({ path: `/details/${product.id}` });
    }
  },
}
</script>
