<template>
  <!-- 整个页面的div-->
  <div>
    <!-- 给整个界面div添加背景图 -->
    <div class="container note" :style="note">
      <!-- 登录界面的div开始 -->
      <div id="log_div">
        <!-- 选择登录方式的div开始 -->
        <div>
          <ul style="list-style:none;display:flex;">
            <li class="log_change">账号密码登录</li>
            |
            <li class="log_change">手机验证码登录</li>
          </ul>
        </div>
        <!-- 选择登录方式的div结束 -->
        <!-- 账号框，密码框开始 -->
        <div>
          <div><input class="my_input" type="text" placeholder="请输入您的账号" value="" ></div>
          <div><input class="my_input" type="text" placeholder="请输入您的账号" value="" ></div>
          <div><button class="my_btn" type="button">登录</button></div>

        </div>
        <!-- 账号框，密码框结束 -->
      </div>
      <!-- 登录界面的div结束 -->
    </div>
  </div>
  
</template>
<style scoped>
  /* 背景图 */
  .container{
    width: 100%;
    height: 1000px;
  }
  /* 登录框大小及边框 */
  #log_div{
    width: 388px;
    height: 356px;
    border: 1px solid lightgray;
    padding: 28px 42px;
  }
  .log_change{
    font-size: 18px;
    margin-right: 25px;
    margin-left: 20px;
  }
  .my_input{
    width: 302px;
    height: 38px;
  }
  .my_btn{
    width: 302px;
    height: 48px;
    background-color: #442818;
    
    padding: 0px 5px;
  }
</style>
<script>
export default {
  data() {
    return {
      note: {
        backgroundImage: "url(" + require("../assets/log_bg.jpg") + ")",
        backgroundRepeat: "no-repeat",
        // backgroundSize: "25px auto",
        marginTop: "5px",
      },
    };
  },
  // methods: {
  
  // },
};
</script>