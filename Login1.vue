<template>
  <div>
    <el-row>
      <el-col :span="6"><div class="grid-content bg-purple"></div></el-col>
      <el-col :span="6"
        ><div class="grid-content bg-purple-light"></div
      ></el-col>
      <el-col :span="6"><div class="grid-content bg-purple"></div></el-col>
      <el-col :span="6">
        <div class="grid-content bg-purple-light">
          <!-- 表单区域开始 -->
          <div>
            <el-tabs v-model="activeName" @tab-click="handleClick">
              <el-tab-pane label="账号密码登录" name="first">
                <!-- 账号密码登录=>账号输入框 -->
                <div>
                  <el-input
                    v-model="input"
                    placeholder="请输入您的账号"
                  ></el-input>
                </div>
                <!-- 账号密码登录=>密码框 -->
                <div>
                  <el-input
                    placeholder="请输入您的密码"
                    v-model="input"
                    show-password
                  ></el-input>
                </div>
                <!-- 账号密码登录=>登录按钮 -->
                <div>
                  <el-row>
                    <el-button type="info">信息按钮</el-button>
                  </el-row>
                </div>
              </el-tab-pane>
              <el-tab-pane label="手机验证登录" name="second">
                <!-- 手机验证登录=>账号输入框 -->
                <div>
                  <el-input
                    v-model="input"
                    placeholder="请输入您的手机号"
                  ></el-input>
                </div>
                <!-- 手机验证登录=>短信验证码 -->
                <div>
                  <el-input v-model="input" placeholder="短信验证码"></el-input>
                  <el-button>获取验证码</el-button>
                </div>
              </el-tab-pane>
            </el-tabs>
            <!-- 登录表单底部区域开始 -->
            <div class="log_botm">
              <!-- 记住账号,默认选中的多选框 -->
              <div>
                <!-- `checked` 为 true 或 false -->
                <el-checkbox v-model="checked">记住账号</el-checkbox>
              </div>
              <!-- 文字链接 -->
              <div>
                <el-link :underline="false" href="#" target="_blank"
                  >忘记密码</el-link>

                <el-link :underline="false" href="#" target="_blank"
                  >去注册</el-link
                >
              </div>
            </div>
            <!-- 登录表单底部区域结束 -->
          </div>
          <!-- 表单区域结束 -->
        </div>
      </el-col>
    </el-row>
  </div>
</template>
<script>
export default {
  data() {
    // note: {
    //   backgroundImage: "url(" + require("../assets/log_bg.jpg") + ")",
    //   backgroundRepeat: "no-repeat",
    //   backgroundSize: "25px auto",
    //   marginTop: "5px",
    // };
    return {
      activeName: "second",
      input: "",
      checked: true,
    };
  },
  methods: {
    handleClick(tab, event) {
      // console.log(tab, event);
    },
  },
};
</script>
<style scoped>
/* background-image:'../assets/log_bg.jpg'; */
.log_botm {
  display: flex;
  justify-content: space-between;
}
/* .el-row {
    margin-bottom: 20px;
    &:last-child {
      margin-bottom: 0;
    }
  } */
.el-col {
  border-radius: 4px;
}
.bg-purple-dark {
  background: #fff;
}
.bg-purple {
  background: #fff;
}
.bg-purple-light {
  background: #fff;
}
.grid-content {
  border-radius: 4px;
  min-height: 36px;
}
.row-bg {
  padding: 10px 0;
  background-color: #fff;
}
</style>>
