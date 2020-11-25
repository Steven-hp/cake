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
      <div v-if="aa == 0">
        <button class="my_button" @click="handle">+添加新地址</button>
      </div>
      <div v-else>
        <div id="shouhuo">
          <span class="my_name">收货人</span>
          <span class="my_address">地址</span>
          <span class="my_tel">联系电话</span>
          <span class="my_caozuo">操作</span>
        </div>
        <!-- 添加地址的信息 -->
        <div id="dizhi" v-for="(item, index) of results" :key="index">
            <div class="name">
              <span >{{ item.receiver }}</span>
            </div>
            <div class="my_address1">
              <span>{{ item.address }}</span>
              <span id="default">[默认地址]</span>
            </div>
            <div class="my_phone">{{ item.cellphone }}</div>
            <div id="button">
              <button>编辑</button>
              <button @click="open(index)">删除</button>
              <button>设置默认地址</button>
            </div>
        </div>
        <!-- 删除按钮 -->
        <div class="bottom-button">
          <!-- <button class="delete" >删除</button> -->
          <button class="create" @click="create_adress">+新建地址</button>
        </div>
      </div>
    </div>
    <div :style="{ display: a }" class="box">
      <h1 class="adress_title">添加地址</h1>
      <div style="text-align: left" class="my_box">
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
        <div style="margin-top: 20px">
          <span>*</span>
          <span>地址</span>
          <input
            id="adress"
            style="margin-left: 30px"
            type="text"
            placeholder="请填写详细地址"
            v-model="address"
          />
        </div>
        <!-- <div style="margin-top: 20px">
          <span>*</span>
          <span>门牌号</span>
          <input
            style="margin-left: 13px"
            type="text"
            placeholder="例: 5号楼201室"
          />
        </div> -->
        <div style="margin-top: 20px">
          <span>*</span>
          <span>收货人</span>
          <input
            style="margin-left: 13px"
            type="text"
            placeholder="收货人姓名"
            v-model="receiver"
          />
          <span style="margin-left: 20px">*</span>
          <span>手机号码</span>
          <input
            style="margin-left: 15px"
            type="text"
            placeholder="收货人手机"
            v-model="cellphone"
          />
        </div>
        <!-- 默认地址 -->
        <div id="btn">
          <div>
            <div style="margin-top: 50px">
              <label class="my_default">
                <input
                  type="checkbox"
                  style="margin-right: 10px"
                />设置为默认地址
              </label>
            </div>
            <div id="my_btn">
              <a href="#" class="btn1" @click="btn">取消</a>
              <a href="javascript:;" class="btn2" @click="bnt22">确定</a>
            </div>
          </div>
          <!-- 确定和取消按钮的样式 -->
        </div>
      </div>
    </div>
    <div :style="{ display: a }" class="zhezhao"></div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      // 弹框初始化是隐藏的
      a: "none",
      aa: 0,
      // 收货人姓名初始化为空
      receiver: "",
      // 收货地址初始化为空
      address: "",
      // 收货号码初始化为空
      cellphone: "",
      // 准备一个空数组
      results: [],
    };
  },
  methods: {
    handle() {
      // 点击按钮是弹框
      this.a = "block";
    },
    btn() {
      // 点击取消隐藏
      this.a = "none";
    },
    bnt22() {
      // 点击确定按钮时
      this.aa++;
      this.a = "none";
      let object = {
        receiver: this.receiver,
        address: this.address,
        cellphone: this.cellphone,
      };
      // 将变量为空值
      this.receiver="";
      this.address="";
      this.cellphone="";
      this.results.push(object);
      this.axios.post("/create", this.qs.stringify(object)).then((res) => {
        if (res.data.code == 1) {
          alert("添加成功");
        } else {
          alert("添加失败");
        }
      });
    },
    // 点击新建地址按钮时弹框的事件
    create_adress() {
      this.a = "block";
    },
    // 点击删除按钮的事件
    open(index) {
      this.$confirm("此操作将永久删除该地址, 是否继续?", "提示", {
        confirmButtonText: "确定",
        cancelButtonText: "取消",
        type: "warning",
      })
        .then(() => {
          this.$message({
            type: "success",
            message: "删除成功!",
          });
          // 通过数组的下标来删除地址
          this.results.splice(index, 1);
        })
        .catch(() => {
          this.$message({
            type: "info",
            message: "已取消删除",
          });
        });
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
  box-sizing: border-box;
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
  left: 30%;
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
.county {
  margin-top: 34px;
}
.my_box {
  margin-left: 42px;
}
.my_box span {
  font-size: 16px;
  color: #684029;
}
.county select {
  font-size: 13px;
  width: 75px;
  height: 28px;
  background: #ffffff;
  border: 1px solid #e1e1e1;
  border-radius: 0;
  margin-left: 10px;
}
.my_box .my_default {
  color: #684029;
}
#my_btn {
  display: inline-block;
  margin-left: 300px;
  margin-top: -27px;
}
input {
  line-height: 25px;
}
#my_btn .btn1 {
  width: 140px;
  height: 42px;
  background: #fff;
  border: 1px solid #e1e1e1;
  color: #6b6b6b;
  font-size: 13px;
  display: block;
  text-align: center;
  float: left;
  line-height: 42px;
}
#my_btn .btn2 {
  width: 140px;
  height: 42px;
  background: #684029;
  border: 1px solid #e1e1e1;
  color: #fff;
  font-size: 13px;
  display: block;
  text-align: center;
  float: left;
  line-height: 42px;
  margin-left: 10px;
}
#adress {
  width: 440px;
}
#shouhuo {
  width: 1200px;
  margin-top: 18px;
  height: 44px;
  line-height: 44px;
  background: #fbfbfb;
  border: 1px solid #e1e1e1;
  font-size: 14px;
  display: flex;
  text-align: center;
}
#shouhuo > .my_name {
  padding-left: 40px;
  width: 100px;
}
#shouhuo > .my_address {
  width: 435px;
}
#shouhuo > .my_tel {
  width: 238px;
}
#shouhuo > .my_caozuo {
  width: 350px;
  margin-left: 100px;
}
#shouhuo span {
  color: #684029;
}
#dizhi span {
  font-size: 14px;
  margin-left: 68px;
  color: #684029;
}
#dizhi {
  width: 1200px;
  height: 70px;
  line-height: 70px;
  background: #fbfbfb;
  border: 1px solid #e1e1e1;
  margin-top: 18px;
  font-size: 14px;
  padding: 10px 0;
}
#dizhi div {
  float: left;
  text-align: center;
}
#dizhi .name{
  width: 100px;
  margin-left: -10px;
} 
#dizhi>.my_address1{
  width:400px;
  margin-left: 45px;
}
#dizhi>.my_phone{
  width: 265px;
}
#default {
  margin-left: 3px !important;
}
#button {
  width: 350px;
  margin-left: 40px;
}
#button button {
  border: 0;
  background: #fff;
  color: #d5bfa7;
  margin: 0 5px;
}
.bottom-button {
  text-align: right;
  margin-top: 15px;
  font-size: 14px;
  padding-bottom: 100px;
  position: relative;
}
.bottom-button .delete {
  background: #f7f7f7;
  border: 1px solid #d2d2d2;
  color: #684029;
  margin-right: 10px;
}
.bottom-button .create {
  background: #684029;
  border: 1px solid #d2d2d2;
  color: #fff;
}
</style>