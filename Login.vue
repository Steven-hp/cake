<template>
  <!-- 给整个界面div添加背景图 -->
  <div class="container" :style="note">
    <div class="cont_box">
      <!-- 登录界面的div开始 -->
      <div id="log_div">
        <!-- 选择登录方式的div开始 -->
        <div>
          <ul @click="logtype" style="list-style: none; display: flex">
            <li class="log_change lognumber">账号密码登录</li>
            |
            <li class="log_change logphone">手机验证码登录</li>
          </ul>
        </div>
        <!-- 选择登录方式的div结束 -->
        <!-- 账号框，密码框,登录按钮开始 -->
        <div>
          <div class="number">
            <div>
              <input
                class="my_input"
                type="text"
                placeholder="请输入您的账号"
                name="logName"
                v-model="uname"
              />
            </div>
            <div>
              <input
                class="my_input"
                type="password"
                placeholder="请输入您的账号"
                name="password"
                v-model="upwd"
              />
            </div>
          </div>
          <div class="phone">
            <!-- 手机验证登录手机号输入框 -->
            <div>
              <input
                class="my_input"
                type="text"
                placeholder="请输入您的手机号"
                name="log_phoneNumber"
              />
            </div>
            <div>
              <input
                class="my_phoneInput"
                type="text"
                placeholder="短信验证"
                name="log_number"
              />
              <input class="my_btn1" type="submit" value="短信验证码" />
            </div>
          </div>
          <div>
            <div id="tip" class="close">
              <div class="log_err">用户名或密码错误</div>
            </div>
          </div>
          <div>
            <input class="my_btn" type="submit" value="登录" @click="handle" />
          </div>
        </div>
        <!-- 账号框，密码框,登录按钮结束 -->
        <!-- 登录框底部开始 -->
        <div class="log_bottom">
          <div class="rememberMe">
            <input
              id="aaa"
              type="checkbox"
              checked
              name="rememberMe"
              value="记住账号"
            />
            <label for="aaa">&nbsp;记住账号</label>
          </div>
          <router-link to="/passport_lost" class="jump"
            ><a href="#" class="a1">忘记密码</a></router-link
          >
          <a href="#" class="a2">去注册</a>
        </div>
        <!-- 登录框底部结束 -->
      </div>
      <!-- 登录界面的div结束 -->
    </div>
  </div>
</template>
<style scoped>
/* 背景图 */
.container {
  width: 100%;
  height: 91vh;
}
.cont_box {
  width: 1000px;
  height: 91vh;
  margin: 0 auto;
  position: relative;
}
/* 登录框大小及边框 */
#log_div {
  width: 388px;
  height: 356px;
  border: 1px solid #efefef;
  padding: 28px 42px;
  position: absolute;
  top: 90px;
  right: -120px;
}
.log_change {
  font-size: 18px;
  margin-right: 25px;
  margin-left: 20px;
  margin-bottom: 20px;
  color: #482618;
}
.my_input {
  width: 302px;
  height: 35px;
  padding: 5px;
  margin-bottom: 15px;
  box-sizing: border-box;
}
.my_input:focus {
  outline: none;
}
.my_btn {
  width: 314px;
  height: 48px;
  background-color: #442818;
  border-radius: 2px;
  padding: 0px 5px;
  color: #ffffff;
  font-size: 18px;
  border: 0px;
  margin-top: 30px;
}
.my_btn:focus {
  outline: none;
}
.rememberMe {
  cursor: pointer;
  margin-left: 34px;
  display: flex;
}
.log_bottom {
  display: flex;
  justify-content: space-between;
  margin-top: 15px;
  font-size: 12px;
  vertical-align: middle;
  color: #744f3a;
}
.jump {
  text-decoration: none;
}
.a1 {
  margin-left: 120px;
  color: #744f3a;
  text-decoration: none;
}
.a2 {
  margin-right: 37px;
  text-decoration: none;
  color: #744f3a;
}
/* 切换登录方式 */
.phone {
  display: none;
}
.my_phoneInput {
  box-sizing: border-box;
  width: 140px;
  height: 35px;
  padding: 3px;
}
.my_phoneInput:focus {
  outline: none;
}
.my_btn1 {
  box-sizing: border-box;
  width: 151px;
  height: 35px;
  border: 1px solid rgb(231, 229, 229);
  background-color: #fafafa;
  outline: 0;
  margin-left: 12px;
  margin-bottom: 15px;
  color: #442818;
}
.log_err {
  background: url("../assets/gantan.png") no-repeat 1px -1px;
  background-size: 18px;
  position: absolute;
  padding-left: 20px;
  height: 17px;
  left: 86px;
  font-size: 12px;
  color: red;
}
.open {
  display: block;
}
.close {
  display: none;
}
</style>
<script>
export default {
  data() {
    return {
      note: {
        backgroundImage: "url(" + require("../assets/log_bg.jpg") + ")",
        backgroundRepeat: "no-repeat",
        marginTop: "5px",
      },
      //用户名密码的变量
      uname: "",
      upwd: "",
    };
  },
  methods: {
    logtype(e) {
      if (e.target.className == "log_change lognumber") {
        document.getElementsByClassName("number")[0].style.display = "block";
        document.getElementsByClassName("phone")[0].style.display = "none";
      } else if (e.target.className == "log_change logphone") {
        document.getElementsByClassName("number")[0].style.display = "none";
        document.getElementsByClassName("phone")[0].style.display = "block";
      }
    },
    //单击注册按钮时校验表单
    handle() {
      //会引发短路现象
      if (this.checkUname() && this.checkUpwd()) {
        //发送相关的用户名和密码到web服务器
        this.axios
          .post("/login", "uname=" + this.uname + "&upwd=" + this.upwd)
          .then((res) => {
            //代表用户登录成功
            if (res.data.code == 1) {
              alert("正确");
            } else {
              console.log("用户名或密码错误");
            }
          });
      }
    },
    //检测用户名
    checkUname() {
      let uname = this.uname;
      let unameReg = /^[0-9a-zA-Z]{6,12}$/;
      if (unameReg.test(uname)) {
        return true;
      } else {
        //显示短消息提示框(标准写法)
        console.log("用户名错误");
        document.getElementById("tip").className = "open";
        //终止函数的执行
        return false;
      }
    },
    //检测密码
    checkUpwd() {
      let upwd = this.upwd;
      let upwdReg = /^[0-9A-Za-z\.\-_]{8,15}$/;
      if (upwdReg.test(upwd)) {
        return true;
      } else {
        console.log("密码错误");
        document.getElementById("tip").className = "open";
      }
    },
  },
  watch: {
    uname() {
      if (this.uname == "") {
        document.getElementById("tip").className = "close";
      }
    },
    upwd() {
      if (this.upwd == "") {
        document.getElementById("tip").className = "close";
      }
    },
  },
};
</script>