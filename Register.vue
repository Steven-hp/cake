<template>
  <!-- 给整个界面div添加背景图 -->
  <div class="container" :style="note">
    <div class="cont_box">
      <!-- 登录界面的div开始 -->
      <div id="log_div">
        <!-- 选择登录方式的div开始 -->
        <div>
          <h2 class="log_change">用户注册</h2>
        </div>
        <!-- 选择登录方式的div结束 -->
        <!-- 表单区域开始 -->
        <div>
          <div>
            <input
              class="my_input"
              type="text"
              placeholder="请输入您的账号"
              name="logName"
              v-model="uname"
              @blur="checkUname"
            />
          </div>
          <div>
            <input
              class="my_input"
              type="password"
              placeholder="请输入您的密码"
              name="password"
              v-model="upwd"
              @blur="checkUpwd"
            />
          </div>
          <div>
            <input
              class="my_input"
              type="password"
              placeholder="确认密码"
              name="staPassword"
              v-model="stapwd"
              @blur="checkStapwd"
            />
          </div>
          <div>
            <input
              class="my_input"
              type="text"
              placeholder="请输入您的手机号"
              name="phone"
              v-model="uphone"
              @blur="checkUphone"
            />
          </div>
          <div class="block">
            <el-date-picker
              v-model="value2"
              align="right"
              type="date"
              placeholder="请选择生日"
              :picker-options="pickerOptions"
              style="width: 317px; height: 36px; padding: 0 5px"
            >
            </el-date-picker>
          </div>
          <div>
            <input class="my_btn" type="submit" value="注册" @click="handle" />
          </div>
        </div>
        <!-- 表单区域结束 -->
        <!-- 登录框底部开始 -->
        <div class="log_bottom">
          <div class="rememberMe">
            <!-- <input
              id="aaa"
              type="checkbox"
              checked
              name="rememberMe"
              value="记住账号"
            /> -->
            <label for="aaa"
              >&nbsp;已阅读并同意<a href="javascript:;" class="a1">会员协议</a
              >和<a href="javascript:;" class="a2">隐私保护政策</a></label
            >
          </div>
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
  width: 1120px;
  height: 91vh;
  transform: translateX(50%);
  margin-left: -232px;
  position: relative;
}
/* 登录框大小及边框 */
#log_div {
  width: 388px;
  height: 485px;
  border: 1px solid #efefef;
  padding: 28px 42px;
  position: absolute;
  top: 90px;
  right: -120px;
}
.log_change {
  font-size: 18px;
  font-family: "PingFang SC", "Heiti SC", "微软雅黑", Helvetica, Arial;
  /* margin-right: 25px; */
  /* margin-left:120px;
  margin-bottom: 20px; */
  text-align: center;
  margin-bottom: 35px;
  /* line-height: 50px; */
  color: #482618;
}
.my_input {
  width: 302px;
  height: 36px;
  padding: 0 5px;
  margin-bottom: 15px;
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
  cursor: pointer;
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
.a1 {
  text-decoration: none;
  color: #2a99fa;
}
.a2 {
  text-decoration: none;
  color: #2a99fa;
}
/* .a1 {
  margin-left: 120px;
  color: #744f3a;
  text-decoration: none;
}
.a2 {
  margin-right: 37px;
  text-decoration: none;
  color: #744f3a;
} */
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
      //用户名、密码、确认密码、手机号变量
      uname: "",
      upwd: "",
      stapwd: "",
      uphone: "",
      pickerOptions: {
        disabledDate(time) {
          return time.getTime() > Date.now();
        },
        shortcuts: [
          {
            text: "今天",
            onClick(picker) {
              picker.$emit("pick", new Date());
            },
          },
          {
            text: "昨天",
            onClick(picker) {
              const date = new Date();
              date.setTime(date.getTime() - 3600 * 1000 * 24);
              picker.$emit("pick", date);
            },
          },
          {
            text: "一周前",
            onClick(picker) {
              const date = new Date();
              date.setTime(date.getTime() - 3600 * 1000 * 24 * 7);
              picker.$emit("pick", date);
            },
          },
        ],
      },
      value2: "",
    };
  },
  methods: {
    //单击注册按钮时校验表单
    handle() {
      //会引发短路现象
      if (this.checkUname() && this.checkUpwd() && this.checkStapwd() && this.checkUphone()) {
        //发送相关的用户名和密码到web服务器
        let object={
          uname:this.uname,
          upwd:this.upwd,
          uphone:this.uphone,
          value:this.value2
        }
        this.axios
          .post("/register", this.qs.stringify(object))
          .then((res) => {
            //代表用户登录成功
            if (res.data.code == 1) {
              // this.$router.push('/');
              console.log("正确");
            } else {
              // this.$messagebox('登录提示','用户名或密码错误');
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
        // this.$toast({
        //   message:'用户名格式或内容错误',
        //   position:"top",
        //   duration:3000,
        // });
        console.log("用户名错误");
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
        // this.$toast({
        //   message:"密码错误",
        //   position:"middle",
        //   duration:3000,
        // });
        console.log("密码错误");
        return false;
      }
    },
    //检测两次密码是否一致
    checkStapwd() {
      //校验两次密码是否一致
      let upwd = this.upwd;
      let stapwd = this.stapwd;
      if (upwd == stapwd) {
        return true;
      } else {
        // this.$toast({
        //   message: "两次密码不一致",
        //   position: "middle",
        //   duration: 4000,
        // });
        console.log('两次密码不一致')
        return false;
      }
    },
    //检测手机号
    checkUphone(){
      let uphone = this.uphone;
      let phoneReg = /0?(13|14|15|17|18|19)[0-9]{9}/;
      if(phoneReg.test(uphone)){
        return true;
      }else{
        console.log('手机号输入错误');
      }
    }
  },
};
</script>