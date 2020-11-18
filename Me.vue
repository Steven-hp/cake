<template>
  <div>
    <div class="container">
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
        </div>
      </div>
      <div class="cash-coupou"></div>
      <!-- 会员信息 -->
      <div class="info"></div>
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
  /* background: url('../assets/images/head_mask.png') no-repeat; */
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
  line-height: 236px;
  margin-right: 233px;
  font-size: 100px;
  opacity: 1; 
}
.el-icon-plus:before{
  content: "";
  display: inline-block;
  width:120px;
  height: 120px;
  background: url('../assets/images/head_mask.png') no-repeat;
}
.avatar-uploader-icon{
  z-index: 2000;
}
/* .avatar-uploader .el-upload {
    border: 3px dashed #000; 
    border-radius: 6px;
    cursor: pointer;
    position: relative;
    overflow: hidden;
  }
  .avatar-uploader .el-upload:hover {
    border-color: #409EFF;
  }
  .avatar-uploader-icon {
    font-size: 50px;
    color: #8c939d;
    width: 178px;
    text-align: center;
  }
  .avatar {
    width: 178px;
    height: 236px;
    display: block;
  } */
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