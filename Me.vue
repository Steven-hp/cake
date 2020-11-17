<template>
  <div>
    <div class="container">
      <!-- 用户修改信息框 -->
      <div class="avatar_info">
        <!-- 用户头像上传 -->
        <div class="avatar2">
          <el-upload
            class="avatar-uploader"
            action="https://jsonplaceholder.typicode.com/posts/"
            :show-file-list="false"
            :on-success="handleAvatarSuccess"
            :before-upload="beforeAvatarUpload"
          >
            <img v-if="imageUrl" :src="imageUrl" class="avatar" />
            <i v-else class="el-icon-plus avatar-uploader-icon"></i>
          </el-upload>
          <p>cake</p>
        </div>
      </div>
      <div class="cash-coupou">
        <div class="ac_item">
          <a href=""><img src="../assets/ac_balance.png" alt=""></a>
          <p class="my_a"><a href="">果实币余额: ¥0</a></p>
          <p class="my_font"><a href="">卡券充值 在线购买果实币</a></p>
        </div>
        <div class="ac_item">
          <a href=""><img src="../assets/ac_coupon.png" alt=""></a>
          <p class="my_a"><a href="">优惠券: 0张可用</a></p>
        </div>
        <div class="ac_item">
          <a href=""><img src="../assets/ac_card.png" alt=""></a>
          <p class="my_a"><a href="">代金卡: 0 张已用</a></p>
        </div>
      </div>
      <!-- 会员信息 -->
      <div class="info">
        <div class="my_p">
          <p id="my_huiyuan">会员中心</p>
          <!-- 跳转到会员专区页面 -->
          <p id="my_shengfen">您当前的身份是：<a href="">注册会员</a></p>
        </div>
        <div id="my_img">
          <img src="../assets/huiyuan.jpg" alt="">
        </div>
        <div style="text-align:left">
          <p class="my_p2">果实规则：</p>
          <p class="my_p2">1、订单实际支付金额每满100元，则将自动获得1颗果实，以此类推。累积果实可升级，并享受各级会员权益。订单中使用优惠券、订单促销等优</p>
          <p class="my_p2">惠抵扣的金额不参与消费金额的累积。</p>
          <p class="my_p2">2、每90天内未产生购买，果实减一颗，若果实减少为下一等级数量时，等级相应降低，上一级别的固定权益失效。</p>
          <p class="my_p2">3、所获得的权益自获得日起，一年内有效。</p>
        </div>
      </div>
    </div>
  </div>
</template>
<style scoped>
.container {
  width: 1200px;
  margin: 0 auto;
  box-sizing: border-box;
}
.avatar_info {
  width: 422px;
  height: 236px;
  background: #f6f5f3;
  float: left;
}
.cash-coupou {
  float: left;
  width: 756px;
  height: 236px;
  background: #f6f5f3;
  margin-left: 21px;
}
.info {
  width: 1200px;
  height: 648px;
  background: #f6f5f3;
  float: left;
  margin-top: 30px;
}
/* 上传按钮的样式 */
.avatar2 {
  line-height: 266px;
  margin-right: 200px;
  font-size: 100px;
  opacity: 1; 
}
.el-icon-plus:before{
  content: "";
  display: inline-block;
  width:120px;
  height: 120px;
  background: url('../assets/head_mask.png') no-repeat;
}
.cash-coupou {
    display: flex;
    justify-content: space-around;
}
.ac_item{
  margin-top: 60px;
}
.my_a{
  margin-top: 20px ;
}
.my_a a{
  color: #988575;
  font-size: 14px;
}
.my_font{
  margin-top: 5px;
}
.my_font a{
  color: #faaf3b;
}
.my_p{
  margin-top: 68px;
}
#my_huiyuan{
  color: #5f504e;
  font-size: 22px;
}
#my_shengfen,#my_shengfen a{
  color: #5f504e;
  font-size: 12px;
  margin-top: 20px;
}
#my_shengfen a{
  color: #c6b198;
}
#my_img{
  margin-top: 25px;
}
.my_p2{
  margin-left:95px;
  margin-top: 20px;
  font-size: 13px;
  color: #513630;
}
</style>

<script>
export default {
  data() {
    return {
      imageUrl: "",
    };
  },
  methods: {
    handleAvatarSuccess(res, file) {
      this.imageUrl = URL.createObjectURL(file.raw);
    },
    beforeAvatarUpload(file) {
      const isJPG = file.type === "image/jpeg";
      const isLt2M = file.size / 1024 / 1024 < 2;

      if (!isJPG) {
        this.$message.error("上传头像图片只能是 JPG 格式!");
      }
      if (!isLt2M) {
        this.$message.error("上传头像图片大小不能超过 2MB!");
      }
      return isJPG && isLt2M;
    },
  },
};
</script>