<template>
   <div class="login-wrap">
        <el-form class="login-container">
            <h1 class="title">用户注册</h1>
            <el-form-item label="">
                <el-input type="text" v-model="uname" autocomplete="off"></el-input>
            </el-form-item>
            <el-form-item label="">
                <el-input type="password" v-model="upwd" autocomplete="off"></el-input>
            </el-form-item>
            <el-form-item>
                <el-button type="primary" style="width: 100%;" @click="handle()">提交</el-button>
            </el-form-item>
            <el-row style="text-align: center; margin-top: -10px;;">
                <el-link type="primary">忘记密码</el-link>
                <el-link type="primary">用户注册</el-link>
            </el-row>
        </el-form>
    </div>
</template>
<script>
export default {
  data() {
    return {
      //用户名、密码及确认密码的变量
      uname: "",
      upwd: "",
      
    };
  },
   methods: {
    //单击免费注册按钮时校验表单
    handle(){
      //会引发短路现象
      
        //现在要发送相关的用户名、密码到WEB服务器
        let object = {
          uname:this.uname,
          upwd:this.upwd
        }
console.log(object)
        //let querystring = 'a=1&b=2&c=3&d=4';
        //console.log(this.qs.parse(querystring));
        //console.log(this.qs.stringify(object));
        this.axios.post('/register',this.qs.stringify(object)).then(res=>{
            //代表用户注册成功
            if(res.data.code == 1){
              this.$router.push('/');
            } else {
              //弹出提示框
              this.$messagebox("提示信息","用户已经存在");
            }
            
        });
      
    }
   }
}
</script>