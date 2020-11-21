<template>
  <el-container class="container"> 
      <!-- 顶部物流配送信息文本框 -->
      <div class="main">
          <p>配送信息</p>
          <div class="adressInfo">
              <div>
                 <router-link to="/" class="address">
                   <img src="../assets/order/地址.png" alt="">
                   添加新的地址
                 </router-link>
                 <div>配送时间
                    <el-date-picker
                      v-model="value"
                      type="datetime"
                      placeholder="选择日期时间"
                      default-time="12:00:00">
                    </el-date-picker>
                    配送时间有前后15分钟误差，奉贤地区10:40～16:30时段内配送
                 </div>                     
                 <div>配送方式
                   <el-radio v-model="radio" label="1">站点自提</el-radio>
                   <el-radio v-model="radio" label="2">cake配送</el-radio>
                 </div> 
              </div>              
          </div>
          <!-- 物流信息结束 -->
          <!-- 订单详情区域 -->
          <div>
             <ul class="cartInfo">
                <li>商品</li>
                <li>生日牌</li>
                <li>单价</li>
                <li>数量</li>
                <li>金额</li>
             </ul>
             <div class="order_list">
                 <div>
                     <ul class="first_pro">
                         <li>
                             <a href="#"><img src="../assets/logo.png"/></a>
                         </li>
                         <li>
                             <div>
                                <a href="#" class="pro_name">Framboise Cake 蔓生</a>
                                <div class="spec">规格：454g(1.0磅)</div>
                                <div class="giving">
                                    <img src="../assets/logo.png"/>赠送5套餐具
                                </div>
                             </div>
                         </li>
                         <li></li>
                         <li>￥198.00</li>
                         <li>1</li>
                         <li>￥198.00</li>
                     </ul>
                 </div>
                 <div class="couponInfo"><span>[送优惠券]</span>新客首单完成后赠送：A原味牛乳冰淇淋兑换券一张满100元使用；B满298元减40元优惠券一张；C满50减10元面包券</div>                
                 <div class="order_msg">
                    <div>
                       <span>订单留言:</span> 
                       <textarea type="text" placeholder="请留下您对订单或商品的特殊要求，200字以内"></textarea>
                    </div>
                 </div>
                <!-- 优惠券发票区域开始 -->
                <div class="coupon">
                  <div >发票：<input type="checkbox"></div> 
                  <el-tabs v-model="activeName" type="card" @tab-click="handleClick">
                    <el-tab-pane label="使用优惠券" name="first">
                      暂无可用优惠券。<a href="#">查看全部优惠券</a> 
                    </el-tab-pane>
                    <el-tab-pane label="添加会员卡" name="second">
                      <input type="text" placeholder="请输入会员卡卡号"><button>添加</button>
                      <div>*优惠券只能同时使用1张</div>
                    </el-tab-pane>                    
                  </el-tabs>
                </div>
                <div class="pay">
                  <div class="left_pay">
                      <p>支付方式</p>
                      <button type="button">在线支付</button>
                      <div><span>-</span>使用会员卡</div>
                      <button>添加会员卡</button>
                      <p>＊不能与优惠券同时使用；抵扣金额不能开具发票</p>
                      <!-- ////////////////////////////////////////////// -->
                      <!-- <el-table :data="tableData" style="width: 100%">
                         <el-table-column type="expand">
                            <template slot-scope="props">
                               <el-form label-position="left" inline class="demo-table-expand">
                                    <el-form-item label="添加会员卡">
                                        <span>{{ props.row.name }}</span>
                                    </el-form-item>
                               </el-form>
                            </template>
                         </el-table-column>  
                      </el-table> -->
       <!-- ///////////////////////////////////////////////////// -->
                </div>
                  <div class="right_pay">                    
                        <ul>
                           <li><span class="pay_desc">商品金额</span><span class="pay_price">¥ 198.00</span></li>
                           <li><span class="pay_desc">配送费</span><span class="pay_price">¥ 0.00</span></li>
                           <li><span class="pay_desc">优惠折扣</span><span class="pay_price">-¥ 0.00</span></li>
                           <li><span class="pay_desc">会员卡抵扣</span><span class="pay_price">-¥ 0.00</span></li>
                        </ul>
                       <div>您总共需要支付<span>¥ 198.00</span></div>
                       <button>下单结算</button>
                       <p>张老师 15015215257</p>
                       <p>上海徐汇区徐家汇汇银广场7楼汇银广场南楼707室</p>
                  </div>
                </div>
             </div>            
          </div>
      </div>
      <!-- 物流信息结束       -->      
  </el-container>     
</template>
<style scoped>
    template{margin: 0;padding: 0;}
    .container{        
        width: 1200px;
        font-size: 14px;
        color: #684029;
        margin:28px auto 0;
        border-radius: 0px;
  }

    /* .main{} */
    .main>p:first-child{
      width: 1153px;height:47px ;
      border: 1px solid #ccc;
      background-color: #FAFAFA;
      line-height: 47px;
      text-align:start;
      padding-left: 45px; 
      box-shadow: 0 2px 4px rgba(0, 0, 0, .12);     
      }
    .adressInfo{
        width: 1198px;height: 253px;
        /* padding:0 55px 0 34px; */
        border: 1px solid #ccc;
        margin-top: 25px;         
    }
    .adressInfo>div:first-child {width: 1111px;height: 77px;border: 1px dashed #ddd; margin: 35px auto 0;}
    .address{              
        line-height: 77px;
        font-size: 18px;font-family: 'PingFang SC','Heiti SC','微软雅黑',Helvetica,Arial;
        text-decoration: none;
        color: #684029;
        }
    .address>img{margin:-3px 10px;}
    .address+div,.address+div+div{
        text-align:start;
        font-family: 'PingFang SC','Heiti SC','微软雅黑',Helvetica,Arial;
        font-size: 12px;
        color: #B3B3B3;
    }
    .address+div{margin-top: 25px;padding: 11px 0;}
    .address+div>input{
        height: 38px;
        border: 1px solid #E1E1E1;
        text-align: center;
        font-size: 14px;
        width: 160px;
        outline: none;
        }
    .address+div>input:first-child{margin-left: 24px;margin-right: 3px;}   
    .address+div+div>label{margin-left: 40px;}
    .el-input{margin-left: 30px;margin-right:10px}
    .el-radio{margin-right: -35px;}
    /*///////////////////////*/
/*///////////////////////*/
    .cartInfo{        
        width: 1198px;height: 44px;
        border: 1px solid #ccc;
        background-color: #FAFAFA;
        box-shadow: 0 2px 4px rgba(0, 0, 0, .12);
        list-style: none;
        line-height: 44px;
        display: flex;
        margin: 32px 0 25px 0;
        padding-left: 0; 
    }
        .cartInfo>li{padding-left: 0; text-align: start;}
        .cartInfo>li:first-child{width: 285px; margin-left:166px;}
        .cartInfo>li:nth-child(2){width: 300px;}
        .cartInfo>li:nth-child(3){width: 115px;}
        .cartInfo>li:nth-child(4){width: 150px;}
        .cartInfo>li:last-child{width: 180px;}
        .order_list{
            /* 高度需要根据订单变化动态加载 */
            width: 1198px;height: 341px;
            margin-top: 20px;
            border: 1px solid #E1E1E1;           
        }
        .order_list>div:first-child,.order_list>div:nth-child(2){
             width: 1076px;height: 155px;                                    
             margin-left: 60px;
             margin-bottom: 0;
        }
        .order_list .first_pro{margin: 0;padding: 0;display: flex;border-bottom: 2px dashed #ccc;}
        .first_pro li{list-style: none;}
        .first_pro>li:first-child{width: 94px;padding: 32px 0;}
        .first_pro>li:first-child img{width: 80px; vertical-align:middle;border: 1px solid #e8e8e8;}
        .first_pro>li:nth-child(2)>div{width: 260px;padding-right: 20px ;text-align: start;margin-top: 30px;padding-left: 16px;}
        .first_pro>li:nth-child(2) img{width: 33px;border: 1px solid #e8e8e8;margin-right: 5px;}
        .pro_name{font-size: 14px; text-decoration: none;font-family: 'PingFang SC','Heiti SC','微软雅黑',Helvetica,Arial;}
        a:visited, a:link, a{color: #684029;outline: none;}
        .spec{font-size:13px; color:#D5BFA7;margin-top: 3px;}
        .giving{margin-top: 12px;font-family: 'PingFang SC','Heiti SC','微软雅黑',Helvetica,Arial;font-size: 10px;color: #c8c8c8;}
        .first_pro>li:nth-child(3){width: 300px;}
        .first_pro>li:nth-child(4){width: 120px;line-height: 146px;text-align: start;font-family: 'PingFang SC','Heiti SC','微软雅黑',Helvetica,Arial;}
        .first_pro>li:nth-child(5){width: 145px;line-height: 146px;text-align: start;font-family: 'PingFang SC','Heiti SC','微软雅黑',Helvetica,Arial;}
        .first_pro>li:last-child{width: 120px;line-height: 146px;text-align: start;color: #f00;font-family: 'PingFang SC','Heiti SC','微软雅黑',Helvetica,Arial;}
        .couponInfo{width: 1076px;height: 47px;padding: 24px 0 5px;color: #684029;font-family: Avenir, Helvetica, Arial, sans-serif;text-align: start;}
        .couponInfo>span{ color:#D5BFA7;cursor: pointer;}
        .order_msg{width: 1198px;border:1px solid #d8d8d8;margin-top:20px;}
        .order_msg>div{width: 1076px;height: 131px;font-size: 14px;padding-top: 20px; text-align: start;margin-left: 60px;}
        .order_msg span{vertical-align: top;}
        .order_msg textarea{
            width: 850px;height: 50px;
            border:none;outline: none;
            font-family:'PingFang SC','Heiti SC','微软雅黑',Helvetica,Arial;
            }
            /****************************/
            .coupon{width: 1198px;margin-top: 32px;border: 1px solid #ccc;}
            .coupon>div:first-child{
              width: 1076px;
              /* padding: 20px 0; */
              margin: 20px 40px 0;
              text-align: start;
              font-size:14px;
            }
        .el-tabs{
          width: 1200px;height: 188px;
          margin-top:15px;
          font-size: 18px;          
        }
        .el-tab-pane{
          font-size: 14px;
          text-align: start;
          margin-left:50px; 
          margin-top: 15px;
          color: #999;           
        }       
      .el-tab-pane a{text-decoration: none;}
      .el-tab-pane input{width:288px ;height:38px;padding: 0; border:1px solid #ccc;outline: none;padding-left: 10px;font-size:13px;transform: translateY(-3%);}
      .el-tab-pane button{width: 98px;height: 40px;padding: 0;background: #684029;color:#fff;border:0;cursor: pointer;} 
      .el-tab-pane button:focus{outline:none;}
      .el-tab-pane div{font-size: 8px;margin-top: 5px;}

      .pay{
        position: relative;
        width: 1109px;
        height: 360px;
        margin-top: 32px;
        border: 1px solid #ccc;
        padding: 14px 55px 32px 34px;
        background: #FAFAFA;
        margin-bottom: 64px;
    }
    .left_pay{width: 260px;height: 177px;}
       .left_pay>p:first-child{
            width: 260px;height: 19px;
            font:14px 'PingFang SC','Heiti SC','微软雅黑',Helvetica,Arial;
            margin: 5px 8px 25px;
            padding:0 ;
            text-align: start;
            }
        .left_pay>button:nth-child(2){
            width: 130px;height: 40px;
            border: 2px solid #442818;
            border-radius: 0;
            font:14px 'PingFang SC','Heiti SC','微软雅黑',Helvetica,Arial;
            color: #684029;
            padding: 0;
            cursor: pointer;
            transform: translateX(-50%);          
        }
        .left_pay>button:focus{outline: none;}
        .left_pay span{
            width: 24px;height: 24px;
            display: block;
            line-height:18px;
            font-size: 36px;
            border: 1px solid #d8d8d8;
            transform: translateY(80%);
            cursor: pointer;          
        }
        .left_pay div{padding-right: 120px;}
        .left_pay>button:nth-child(4){
          width: 186px;height: 40px;
          border: 1px solid #ccc;
          cursor: pointer;
          font:14px 'PingFang SC','Heiti SC','微软雅黑',Helvetica,Arial;
          font-weight: bold;
          color: #684029;
          margin-top: 25px;
          margin-right: 18px;
        }
        .left_pay>:last-child{
        width: 264px;height: 16px;
        font:8px 'PingFang SC','Heiti SC','微软雅黑',Helvetica,Arial;
        margin-left:26px;
        }
        

    .right_pay{
        width: 280px;height: 344px;
        position: absolute;
        top:28px;left: 862px;
        /* border: 1px solid #000; */
        font:8px 'PingFang SC','Heiti SC','微软雅黑',Helvetica,Arial;
        text-align: end;
        }
        
        .right_pay ul{list-style: none;font-size: 6px;}  
        .pay_desc{display: inline-block; width: 150px; text-align: start;}
        .pay_price{display: inline-block;width: 50px;}    
        .right_pay li{padding-left: 30px;padding:0 0 20px 35px; }
        .right_pay li:nth-child(3)>span:nth-child(2),.right_pay li:last-child>span:nth-child(2){color:#ff714d;;}
        .right_pay li:last-child{border-bottom: 1px solid #ccc;padding-bottom: 25px;}
        .right_pay button{
          width: 210px;height: 44px;
          background-color:#684029 ;
          color: #fff;
          font-size:16px;
          border: none;
          margin: 8px 0 28px;
          cursor: pointer;
          }
          .right_pay button:focus{outline: none;}
          .right_pay>div{margin-top: 20px;}
          .right_pay div>span{color: #ff714d;font-size:25px;}
     
        /* .demo-table-expand {
    font-size: 0;
  }
  .demo-table-expand label {
    width: 190px;
    color: #99a9bf;
  }
  .el-form--inline .el-form-item__label{width: 150px;}
  .demo-table-expand .el-form-item {
    margin-right: 0;
    margin-bottom: 0;
    width: 100%;
  } */
</style>
<style >
   .el-tabs__item.is-active{color:#999;}
  </style>
<script>
  export default {
    data () {
      return {         
        radio: '1',
        pickerOptions: {
          shortcuts: [{
            text: '今天',
            onClick(picker) {
              picker.$emit('pick', new Date());
            }
          }, {
            text: '昨天',
            onClick(picker) {
              const date = new Date();
              date.setTime(date.getTime() - 3600 * 1000 * 24);
              picker.$emit('pick', date);
            }
          }, {
            text: '一周前',
            onClick(picker) {
              const date = new Date();
              date.setTime(date.getTime() - 3600 * 1000 * 24 * 7);
              picker.$emit('pick', date);
            }
          }]
        },
        value: '',
        activeName: 'first',
        tableData: [{        
          name: '123',
        }], 
      };   
    },
    methods: {
      handleClick(tab, event) {
        console.log(tab, event);
      }  
    }
  };
</script>