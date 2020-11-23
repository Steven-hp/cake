<template>
  <div>
    <!-- 轮播图开始 -->
    <div class="block">
      <el-carousel height="749px">
        <el-carousel-item v-for="(item,index) of carousel" :key="index">
          <img :src="item.index_carousel_url">
        </el-carousel-item>
      </el-carousel>
    </div>
    <!-- 轮播图结束 -->
    <!-- 中间部分 -->
    <div class="container_box">
    <!-- 商品导航开始 -->
      <div class="index_nav">
          <ul>
              <li><a href="#F1"><img src="../assets/picture/bc369fca5990e32df765d24e08221112.jpg" alt=""></a></li>
              <li><a href="#F2"><img src="../assets/picture/9d85677ea56806bff908c431f7c764f7.jpg" alt=""></a></li>
              <li><a href="#F3"><img src="../assets/picture/43a4c974312a2be97a1d0d6616c3ab23.jpg" alt=""></a></li>
              <li><a href="#F4"><img src="../assets/picture/9e3f7fdd852d1b35f318076e3575412c.jpg" alt=""></a></li>
              <li><a href="#F5"><img src="../assets/picture/37752f6805d166b02e011c3b5c3b4972.jpg" alt=""></a></li>
          </ul>
      </div>
    <!-- 商品导航结束 -->
    <!-- 展示楼层1F开始 -->
      <div class="index_figure" id="F1">
        <span class="index_word1">新品</span><span class="index_word2">/</span><span class="index_word2">专区</span>
        <div>
          <router-link to="#"><img src="../assets/figure/83db96358514ac6ecade4f142c2c5750.jpg" alt=""></router-link>
        </div>
        <!-- 商品展示 -->
        <div class="products_width">
          <div class="index_products" v-for="(item1,index1) of products1" :key="index1">
            <div>
              <router-link to="#">
              <img :src="item1.pro_imgs_url" alt="">
              <!-- 商品名称和商品描述 -->
              <p>{{item1.pro_name}}</p>
              <p>{{item1.pro_desc}}</p>
              </router-link>
            <!-- 商品标签 -->
            <div class="tag_list">
              <router-link to="#">{{item1.pro_label}}></router-link>
            </div>
              <div class="index_price">
                <!-- 商品价格 -->
                <div>¥{{item1.pro_price.toFixed(2)}}/908g(1.0磅)</div>
                <router-link to="a">加入购物车</router-link>
              </div>
            </div>
          </div>
        </div>
        <!-- 商品展示结束 -->
      </div>
    <!-- 展示楼层结束 -->
    <!-- 展示楼层2F开始 -->
      <div class="index_figure" id="F2">
        <span class="index_word1">生日</span><span class="index_word2">/</span><span class="index_word2">专区</span>
        <div>
          <router-link to="#"><img src="../assets/figure/84f0375298ea7fe876ae1447c2911400.jpg" alt=""></router-link>
        </div>
        <!-- 商品展示 -->
        <div class="products_width">
          <div class="index_products" v-for="(item2,index2) of products2" :key="index2">
            <div>
              <router-link to="#">
              <img :src="item2.pro_imgs_url" alt="">
              <!-- 商品名称和商品描述 -->
              <p>{{item2.pro_name}}</p>
              <p>{{item2.pro_desc}}</p>
              </router-link>
            <!-- 商品标签 -->
            <div class="tag_list">
              <router-link to="#">{{item2.pro_label}}></router-link>
            </div>
              <div class="index_price">
                <!-- 商品价格 -->
                <div>¥{{item2.pro_price.toFixed(2)}}/908g(1.0磅)</div>
                <router-link to="a">加入购物车</router-link>
              </div>
            </div>
          </div>
        </div>
        <!-- 商品展示结束 -->
      </div>
    <!-- 展示楼层结束 -->
    <!-- 展示楼层3F开始 -->
      <div class="index_figure" id="F3">
        <span class="index_word1">儿童</span><span class="index_word2">/</span><span class="index_word2">专区</span>
        <div>
          <router-link to="#"><img src="../assets/figure/a85037c288546b3c691192dfad2bb16a.jpg" alt=""></router-link>
        </div>
        <!-- 商品展示 -->
        <div class="products_width">
          <div class="index_products" v-for="(item3,index3) of products3" :key="index3">
            <div>
              <router-link to="#">
              <img :src="item3.pro_imgs_url" alt="">
              <!-- 商品名称和商品描述 -->
              <p>{{item3.pro_name}}</p>
              <p>{{item3.pro_desc}}</p>
              </router-link>
            <!-- 商品标签 -->
            <div class="tag_list">
              <router-link to="#">{{item3.pro_label}}></router-link>
            </div>
              <div class="index_price">
                <!-- 商品价格 -->
                <div>¥{{item3.pro_price.toFixed(2)}}/908g(1.0磅)</div>
                <router-link to="a">加入购物车</router-link>
              </div>
            </div>
          </div>
        </div>
        <!-- 商品展示结束 -->
      </div>
    <!-- 展示楼层结束 -->
    <!-- 展示楼层4F开始 -->
      <div class="index_figure" id="F4">
        <span class="index_word1">聚会</span><span class="index_word2">/</span><span class="index_word2">专区</span>
        <div>
          <router-link to="#"><img src="../assets/figure/4f5fdcf4d2b26b0400372f90b8fac191.jpg" alt=""></router-link>
        </div>
        <!-- 商品展示 -->
        <div class="products_width">
          <div class="index_products" v-for="(item4,index4) of products4" :key="index4">
            <div>
              <router-link to="#">
              <img :src="item4.pro_imgs_url" alt="">
              <!-- 商品名称和商品描述 -->
              <p>{{item4.pro_name}}</p>
              <p>{{item4.pro_desc}}</p>
              </router-link>
            <!-- 商品标签 -->
            <div class="tag_list">
              <router-link to="#">{{item4.pro_label}}></router-link>
            </div>
              <div class="index_price">
                <!-- 商品价格 -->
                <div>¥{{item4.pro_price.toFixed(2)}}/908g(1.0磅)</div>
                <router-link to="a">加入购物车</router-link>
              </div>
            </div>
          </div>
        </div>
        <!-- 商品展示结束 -->
      </div>
    <!-- 展示楼层结束 -->
    <!-- 活动专区开始 -->
      <div class="index_activity" id="F5">
        <span class="index_word1">活动门</span><span class="index_word2">/</span><span class="index_word2">是被吸引了吧</span>
        <div>
          <router-link to="#"><img src="../assets/picture/810af7fb1f079477c8aec960d11fa4df.jpg" alt=""></router-link>
        </div>
      </div>
    <!-- 活动专区结束 -->
    <!-- 文章内容开始 -->
      <div class="index_article">
        <div>
          <div><span class="index_word1">廿一客</span><span class="index_word2">/</span><span class="index_word2">文章</span></div>
          <router-link to="#">查看更多 ></router-link>
        </div>
        
        <div class="index_articles">
          <div>
            <router-link to="#">
              <img src="../assets/picture/520577a6cd05e8ff8fe54ac95b291ceb.jpg" alt="">
              <h4>冬季刊·进博会</h4>
              <p>阅读全文 >></p>
            </router-link>
          </div>
          <div>
            <router-link to="#">
              <img src="../assets/picture/dea6a02ac712f5fc042a93d5cfe2c24a.jpg" alt="">
              <h4>甘一志秋刊·客服</h4>
              <p>阅读全文 >></p>
            </router-link>
          </div>
        </div>
      </div>
    <!-- 文章内容结束 -->
    </div>
    <!-- 中间部分 -->
  </div>
</template>

<script>

export default {
  data(){
    return{
        // 轮播图数组
      carousel:[],
      products1:[],
      products2:[],
      products3:[],
      products4:[]
    }
  },
  mounted(){
    // 轮播图
    this.axios.get("/").then(res=>{
      let data=res.data.results;
      data.forEach(item=>{
        // 轮播图路径
        item.index_carousel_url=require("../assets/carousel/"+item.index_carousel_url);
        // 推入轮播图数组
        this.carousel.push(item);
      })
    });
    // 1F商品
    this.axios.get("/products1").then(res=>{
      let data=res.data.results;
      console.log(data);
      data.forEach(item=>{
        item.pro_imgs_url=require("../assets/list/"+item.pro_imgs_url);
        this.products1.push(item);
      })
    });
    // 2F商品
    this.axios.get("/products2").then(res=>{
      let data=res.data.results;
      console.log(data);
      data.forEach(item=>{
        item.pro_imgs_url=require("../assets/list/"+item.pro_imgs_url);
        this.products2.push(item);
      })
    });
    // 3F商品
    this.axios.get("/products3").then(res=>{
      let data=res.data.results;
      console.log(data);
      data.forEach(item=>{
        item.pro_imgs_url=require("../assets/list/"+item.pro_imgs_url);
        this.products3.push(item);
      })
    });
    // 4F商品
    this.axios.get("/products4").then(res=>{
      let data=res.data.results;
      console.log(data);
      data.forEach(item=>{
        item.pro_imgs_url=require("../assets/list/"+item.pro_imgs_url);
        this.products4.push(item);
      })
    });
  }
}
</script>
<style scoped>
.container_box{
    width: 1100px;
    margin: 0 auto;
    margin-top: 36px;
}
.index_nav ul{
    list-style: none;
    display: flex;
    justify-content: space-between;
    padding: 0;
}
.index_nav li{
    box-shadow: 1px 1px 8px lightgray;
}
/* .index_nav li+li{
  margin-left: 0px;
} */
/* 展示楼层 */
.container_box .index_figure{
  width: 1100px;
  margin-top: 50px;
}
.index_figure>div{
  margin-top: 30px;
}
/* 展示楼层标题 */
.index_word1{
    font-size: 26px;
    color: #724228;
    /* margin-left: 20px; */
}
.index_word2{
    font-size: 14px;
    color: #8E5D43;
    margin-left: 6px;
}
/* 商品展示部分 */
.products_width{
  width: 1100px;
  display: flex;
  justify-content: space-between;
}
.index_products{
  width: 263px;
  background-color: #fafafa;
}
.index_products img{
  width: 263px;
  height: 230px;
  background-color: #fafafa;
}
.index_products a{
  text-decoration: none;
  color: #000;
}
/* .index_products>img{
  background-color: #fafafa;
  border: 1px dashed gray;
} */
/* .index_products a p{
  margin: 0;
} */
.index_products p:nth-child(2){
  margin: 10px 0px 0px 0px;
  font-size: 16px;
}
.index_products p:nth-child(3){
  margin: 0;
  font-size: 14px;
  color: #616161;
}
.tag_list{
  display: inline-block;
  border: 1px solid #D5BFA7;
  border-radius: 100px;
  padding: 0 6px 0 8px;
  color: #D5BFA7;
  margin: 8px 3px;
  font-size: 12px;
}
/* 标签 */
.tag_list a{
  color: #D5BFA7;
  padding: 0 3px 0 4px;
}
.index_price{
  border-top: 1px dashed #D5BFA7;
  display: flex;
  justify-content: space-between;
  color: #BB9772;
  font-size: 14px;
}
.index_price>div{
  margin-top: 15px;
}
.index_price a{
  background-color:#643E28;
  color: #ffffff;
  font-size: 12px;
  padding: 2px 10px;
  margin-top: 15px;
}
/* 活动部分 */
.index_activity{
  margin-top: 50px;
}
.index_activity>div{
  display: flex;
  justify-content: space-between;
  margin-top: 30px;
}
.index_activity img{
  width: 542px;
  border-radius: 8px 8px 0px 0px;
}
/* 底部文章部分 */
.index_article{
  margin: 50px 0px;
}
.index_article>div:first-child{
  display: flex;
  justify-content: space-between;
}
.index_article>div:first-child a{
  font-size: 13px;
  color: #8E5D43;
  text-decoration: none;
}
.index_articles{
  display: flex;
  justify-content: space-between;
  margin-top: 30px;
}
.index_articles>div{
  width: 542px;
  box-shadow: 0px 4px 4px lightgrey;
}
.index_articles a{
  color: #000;
  text-decoration: none;
}
.index_articles img{
  width: 542px;
  border-radius: 8px 8px 0px 0px;
}
.index_articles h4{
  font-size: 24px;
  padding: 0 16px;
  font-weight: 400;
  margin: 16px 0px 0px 0px;
}
.index_articles p{
  color: #AD814B;
  padding: 0 16px;
  font-size: 14px;
}
</style>