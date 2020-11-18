<template>
  <div>
    <div class="footer">
      <div>
        <div class="footer1">
          <div><img src="../assets/picture/footer-logo-v2.png" alt=""></div>
          <div><img src="../assets/picture/footer-solgan.png" alt=""></div>
          <ul>
            <li><router-link to="#"><img src="../assets/picture/footer-icon-weibo.png" alt=""></router-link></li>
            <li><router-link to="#"><img src="../assets/picture/footer-icon-weixin.png" alt=""></router-link></li>
            <li><router-link to="#"><img src="../assets/picture/footer-icon-app.png" alt=""></router-link></li>
          </ul>
        </div>
        <div class="footer2">
          <p class="footer_title">关于我们</p>
          <p class="footer_text">联系我们</p>
          <p>订购专线：400 650 2121 （服务时间</p>
          <p>08:00–22:00）；</p>
          <p>企业团购热线：021-37768380；</p>
          <p>客服电话：021-23099721（全国）；</p>
          <p>kefu@21cake.com（邮箱）；</p>
          <div>
            <router-link to="#"><p>订购帮助</p></router-link>
            <router-link to="#"><p>企业合作</p></router-link>
            <router-link to="#"><p>生产经营资质</p></router-link>
            <router-link to="#"><p>公告专区</p></router-link>
          </div>
        </div>
        <div class="footer3">
          <p class="footer_title">订购时间</p>
          <p>杭州/广州：提前5小时预订；</p>
          <p>北京：提前6小时预订；</p>
          <p>上海：提前5.5-6小时预订；</p>
          <p>天津/苏州/无锡/深圳：提前8小时预订（部分偏远地区除外，当日22点以后订单，于次日8点开始审核）</p>
          <div>
            <p>当日蛋糕配送截止下单时间：北京/上海：16:30；杭州/广州：14:00；天津：10:30；苏州/无锡/深圳：11:00</p>
          </div>
        </div>
        <div class="footer4">
          <p class="footer_title">网络运营</p>
          <p>网站注册公司名称: 北京廿一客食品有限公司 地址: 北京市北京经济技术开发区兴海二街5号院3号楼</p>
          <p>网站运营：廿一客（上海）电子商务有限公司 地址：上海市松江区新效支路518号</p>
          <p>上海廿一客食品有限公司分公司 地址：上海市松江区新效支路518号</p>
          <p>杭州廿一客食品有限公司 地址：杭州市滨江区秋溢路500号</p>
          <p>广州廿一客食品有限公司 地址：广州市南沙区东涌镇鱼窝头大道段</p>
          <p>北京廿一客食品有限公司 地址：北京市北京经济技术开发区兴海二街5号院</p>
          <p>深圳廿一客贸易有限公司 地址：深圳市福田区星河世纪大厦A栋1717</p>
          <p>天津廿一客食品有限公司 地址：天津市河西区麦收大厦2-2004</p>
          <p>广州廿一客食品贸易有限公司 地址：广州市南沙区东涌镇鱼窝头大道段</p>
          <p>举实（上海）食品有限公司 地址：上海市松江区新效支路518号</p>
        </div>
      </div>
      <!-- 底部文字 -->
      <div class="footer_bottom">
        <p>Copyright© 21Cake蛋糕官网商城 2007-2020, 版权所有 京ICP备14006254号-1 京公网安备 11030102010682号</p>
      </div>
    </div>
  </div>
</template>
<style scoped>
.footer{
  background: url("../assets/picture/b79141ad839d248c059ce75a021872e9.jpg") no-repeat;
  height: 450px;
  position: relative;
}
.footer>div:first-child{
  width: 1200px;
  height: 265px;
  position: absolute;
  left: 360px;
  top: 50px;
  z-index: 10;
  display: flex;
  justify-content: space-between;
  color: #b3b2b2;
  font-size: 12px;
}
.footer p{
  margin: 0;padding: 0;
}
.footer1,.footer2,.footer3,.footer4{
  width: 230px;
}
.footer1 ul{
  list-style: none;
  padding: 0;
}
.footer1 ul>li+li,li:nth-child(1){
  margin: 0px 0px 14px 0px;
}
.footer .footer_title{
  color: #fff;
  font-size: 12px;
  margin: 11px 0 20px;
}
.footer_text{
  color: #fff;
  font-size: 12px;
}
.footer2>div p{
  text-decoration: none;
  color: #fff;
  font-size: 12px;
  margin: 10px 0px 0px 0px;
}
.footer3>div{
  margin-top: 20px;
}
.footer4{
  width: 400px;
}
/* 底部文字 */
.footer .footer_bottom{
  width: 100%;
  color:#878787;
  position: absolute;
  bottom: 0px;
  z-index: 11;
  text-align: center;
  border: 1px #8d8d8d solid;
  font-size: 13px;
}
.footer_bottom p{
  padding: 5px 0px;
}
</style>