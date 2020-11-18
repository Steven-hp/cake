<template>
  <div class="contentBox">
    <!-- 分类 -->
    <div class="proListFilter">
      <dl>
        <dt>分类：</dt>
        <dd><a href="">全部分类</a></dd>
        <dd>
          <a href="">蛋糕</a>
        </dd>
        <dd><a href="">冰淇淋</a></dd>
        <dd>
          <a href="">咖啡下午茶</a>
        </dd>
        <dd><a href="">常温蛋糕</a></dd>
        <dd><a href="">设计师礼品</a></dd>
        <dd>
          <a href="">面包</a>
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
      <div class="proListSu">
        <!-- 图片 -->
        <a href="">
          <img src="../assets/list/1.jpg" alt="" />
        </a>
        <!-- 名称 -->
        <h3>橘与桔</h3>
        <!-- 价格 -->
        <span>¥198.00/454g(1.0磅)</span>
        <!-- 推荐 -->
        <div class="labelEntrance">
          <a href="">新品 &gt;</a><a href="">当季推荐 &gt;</a>
        </div>
        <!-- 加入购物车 -->
        <a href="" name="pro-list-addcart_1412" class="proListAddcart"
          ><i></i>加入购物车</a
        >
      </div>

      <!-- 单个商品 -->
      <div class="proListSu">
        <!-- 图片 -->
        <a href="">
          <img src="../assets/list/1.jpg" alt="" />
        </a>
        <!-- 名称 -->
        <h3>橘与桔</h3>
        <!-- 价格 -->
        <span>¥198.00/454g(1.0磅)</span>
        <!-- 推荐 -->
        <div class="labelEntrance">
          <a href="">新品 &gt;</a><a href="">当季推荐 &gt;</a>
        </div>
        <!-- 加入购物车 -->
        <a href="" name="pro-list-addcart_1412" class="proListAddcart"
          ><i></i>加入购物车</a
        >
      </div>

      <!-- 单个商品 -->
      <div class="proListSu">
        <!-- 图片 -->
        <a href="">
          <img src="../assets/list/1.jpg" alt="" />
        </a>
        <!-- 名称 -->
        <h3>橘与桔</h3>
        <!-- 价格 -->
        <span>¥198.00/454g(1.0磅)</span>
        <!-- 推荐 -->
        <div class="labelEntrance">
          <a href="">新品 &gt;</a><a href="">当季推荐 &gt;</a>
        </div>
        <!-- 加入购物车 -->
        <a href="" name="pro-list-addcart_1412" class="proListAddcart"
          ><i></i>加入购物车</a
        >
      </div>

      <!-- 单个商品 -->
      <div class="proListSu">
        <!-- 图片 -->
        <a href="">
          <img src="../assets/list/1.jpg" alt="" />
        </a>
        <!-- 名称 -->
        <h3>橘与桔</h3>
        <!-- 价格 -->
        <span>¥198.00/454g(1.0磅)</span>
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
}
</style>