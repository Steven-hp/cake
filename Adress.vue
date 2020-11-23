<template>
  <div>
    <div class="container">
      <div class="title">
        <span>地址管理</span>
        已保存
        <span id="">0</span>
        个收货地址（最多添加10条）
      </div>
      <!-- 添加新地址 -->
      <div>
        <button class="my_button" @click="handle">+添加新地址</button>
      </div>
    </div>
    <div :style="{ display: a }" class="box">
      <h1 class="adress_title">添加地址</h1>
      <div style="text-align:left" class="my_box">
        <!-- 市的下拉选择框 -->
        <div class="county">
          <span>*</span>
          <span>所在地区</span>
          <select name="city" id="city">
            <option value="1">上海市</option>
            <option value="2">北京市</option>
            <option value="3">天津市</option>
            <option value="4">杭州市</option>
            <option value="5">广州市</option>
            <option value="6">深圳市</option>
          </select>
          <!-- 区的下拉选择框 -->
          <select name="area" id="area">
            <option value="1">宝山区</option>
            <option value="2">长宁区</option>
            <option value="3">浦东新区</option>
            <option value="4">闵行区</option>
            <option value="5">徐汇区</option>
            <option value="6">金山区</option>
            <option value="7">普陀区</option>
            <option value="8">虹口区</option>
            <option value="9">青浦区</option>
            <option value="10">杨浦区</option>
            <option value="11">闸北区</option>
            <option value="12">松江区</option>
            <option value="13">黄浦区</option>
            <option value="14">嘉定区</option>
            <option value="15">静安区</option>
            <option value="16">奉贤区</option>
          </select>
        </div>
        <div style="margin-top:20px;">
          <span>*</span>
          <span>地址</span>
          <input id="adress" style="margin-left:30px" type="text" placeholder="请填写小区/写字楼/学校等">
        </div>
        <div style="margin-top:20px">
          <span>*</span>
          <span>门牌号</span>
          <input style="margin-left:13px" type="text" placeholder="例: 5号楼201室">
        </div>
        <div style="margin-top:20px">
          <span>*</span>
          <span>收货人</span>
          <input style="margin-left:13px" type="text" placeholder="收货人姓名">
          <span style="margin-left:20px">*</span>
          <span>手机号码</span>
          <input style="margin-left:15px" type="text" placeholder="收货人手机">
        </div>
        <!-- 默认地址 -->
        <div id="btn">
        <div>
          <div style="margin-top:50px">
          <label class="my_default">
            <input type="checkbox" style="margin-right: 10px;">设置为默认地址
          </label>
          </div>
          <div id="my_btn">
          <a href="#" class="btn1" @click="btn">取消</a>
          <a href="#" class="btn2">确定</a>
        </div>
        </div>
        <!-- 确定和取消按钮的样式 -->
        </div>
      </div>
      <!-- <p @click="btn">x</p> -->
    </div>
    <div :style="{ display: a }" class="zhezhao"></div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      a: "none",
    };
  },
  methods: {
    handle() {
      this.a = "";
    },
    btn() {
      this.a = "none";
    },
  },
};
</script>
<style scoped>
/* 主体 */
.container {
  width: 1200px;
  margin: 0 auto;
  text-align: left;
}
.title {
  font-size: 14px;
  color: #383838;
  line-height: 22px;
  margin-top: 40px;
  font-weight: bold;
}
.title span {
  font-size: 16px;
}
.my_button {
  display: block;
  border: 1px dashed #e1e1e1;
  width: 1132px;
  height: 118px;
  color: #80695b;
  margin: 40px auto 0;
  background: #fff;
  font-size: 14px;
}
.my_button:hover {
  color: burlywood;
}
.box {
  width: 649px;
  height: 421px;
  background: #fff;
  z-index: 10;
  top: 25%;
  left: 35%;
  position: absolute;
}
.zhezhao {
  width: 100%;
  height: 100%;
  top: 0;
  left: 0;
  background: rgba(0, 0, 0, 0.6);
  position: absolute;
  z-index: 9;
}
.adress_title {
  text-align: left;
  color: #cacaca;
  font-size: 14px;
  margin-top: 28px;
  margin-left: 42px;
}
.county{
  margin-top: 34px;
}
.my_box{
  margin-left: 42px;
}
.my_box  span{
  font-size: 16px;
  color: #684029;
}
.county select{
  font-size: 13px;
    width: 66px;
    height: 28px;
    background: #FFFFFF;
    border: 1px solid #E1E1E1;
    border-radius: 0;
    margin-left:10px;
}
.my_box .my_default{
  color: #684029;
}
#my_btn{
display: inline-block;
margin-left: 300px;
margin-top: -27px;
}
input{
  line-height: 25px;
}
#my_btn .btn1{
  width: 140px;
    height: 42px;
    background: #FFF;
    border: 1px solid #E1E1E1;
    color: #6B6B6B;
    font-size: 13px;
    display: block;
    text-align: center;
    float: left;
    line-height: 42px;
}
#my_btn .btn2{
  width: 140px;
    height: 42px;
    background: #684029;
    border: 1px solid #E1E1E1;
    color: #fff;
    font-size: 13px;
    display: block;
    text-align: center;
    float: left;
    line-height: 42px;
    margin-left: 10px;
}
#adress{
  width: 440px;
}
</style>