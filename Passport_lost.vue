<!-- 忘记密码 -->
<template>
  <div>
    <!-- 标题 -->
    <div id="title">
      <h2>找回密码</h2>
    </div>
    <!-- 操作框 -->
    <div id="frame">
      <!-- 单选框开始 -->
      <div class="change">
        <label class="phone"
          ><input type="radio" name="change" value="手机" checked />手机</label
        >
        <label class="email"
          ><input type="radio" name="change" value="邮箱" />邮箱</label
        >
      </div>
      <!-- 单选框结束 -->
      <!-- 输入框开始 -->
      <div>
        <div>
          <input
            class="input"
            type="text"
            placeholder="请输入您的手机号"
            name="phone"
          />
        </div>
        <div class="div_input">
          <input
            class="input1"
            type="text"
            placeholder="填写图片验证码"
            name="picturenNumber"
          />
          <canvas
            id="canvas"
            style="border: 1px solid red; width: 80px; height: 20px"
          ></canvas>
          <span id="yanzhengma"></span
          ><a class="a" @click="getVerification">看不清?换一张</a>
        </div>
        <div><input class="btn" type="submit" value="下一步" /></div>
      </div>
      <!-- 输入框结束 -->
    </div>
  </div>
</template>
<style scoped>
h2 {
  margin: 0;
}
#title {
  border: none;
  padding-left: 150px;
  height: 60px;
  line-height: 60px;
  color: #8d6a54;
  background: url(../assets/people.png) no-repeat 95px;
  text-align: left;
  margin-top: 70px;
}
.phone,
.email {
  font-size: 16px;
  color: #604136;
  padding: 0 10px;
}
.change {
  padding-bottom: 30px;
}
.input,
.div_input {
  width: 398px;
  height: 30px;
  padding: 16px 0px 16px 20px;
  color: #9e8266;
  border: 0.5px solid #dedfdf;
}
.div_input {
  display: inline-block;
}
.input1 {
  margin-left: -80px;
  border: 0;
}
.input1:focus {
  outline: 0;
}
.a {
  font-size: 12px;
  color: rgb(51, 118, 243);
  margin-left: 20px;
}
.input:focus {
  outline: 0;
}
.btn {
  width: 422px;
  height: 55px;
  font-size: 18px;
  color: #fff;
  border: 0px;
  background-color: #491903;
  margin-top: 30px;
}
.btn:focus {
  outline: 0;
}
</style>
<script>
export default {
  data() {
    return {};
  },
  methods: {
    randomColor() {
      var colorValue = "0,1,2,3,4,5,6,7,8,9,a,b,c,d,e,f";
      var colorArray = colorValue.split(",");
      var color = "#";
      for (var i = 0; i < 6; i++) {
        color += colorArray[Math.floor(Math.random() * 16)];
      }
      return color;
    },
    getRandomNum(n) {
      return parseInt(Math.random() * n);
    },
    getVerification() {
      var ctx = document.getElementById("canvas").getContext("2d");
      ctx.clearRect(0, 0, 400, 400);
      // 设置字体
      ctx.font = "128px bold 黑体";
      // 设置垂直对齐方式
      ctx.textBaseline = "top";
      // 设置颜色
      ctx.fillStyle = this.randomColor();
      // 绘制文字（参数：要写的字，x坐标，y坐标）
      ctx.fillText(this.getRandomNum(10), 0, this.getRandomNum(50));
      ctx.fillStyle = this.randomColor();
      ctx.fillText(this.getRandomNum(10), 50, this.getRandomNum(50));
      ctx.fillStyle = this.randomColor();
      ctx.fillText(this.getRandomNum(10), 100, this.getRandomNum(50));
      ctx.fillStyle = this.randomColor();
      ctx.fillText(this.getRandomNum(10), 150, this.getRandomNum(50));
    },
  },
  mounted() {
    this.getVerification();
  },
};
</script>