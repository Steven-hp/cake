<template>
  <div>
    <el-row>
      <el-col :span="24"
        ><div class="grid-content bg-purple-dark"></div
      ></el-col>
    </el-row>
    <el-row>
      <el-col :span="12"><div class="grid-content bg-purple"></div></el-col>
      <el-col :span="12"
        ><div class="grid-content bg-purple-light"></div
      ></el-col>
    </el-row>
    <el-row>
      <el-col :span="8"><div class="grid-content bg-purple"></div></el-col>
      <el-col :span="8"
        ><div class="grid-content bg-purple-light"></div
      ></el-col>
      <el-col :span="8"><div class="grid-content bg-purple"></div></el-col>
    </el-row>
    <el-row>
      <el-col :span="6"><div class="grid-content bg-purple"></div></el-col>
      <el-col :span="6"
        ><div class="grid-content bg-purple-light"></div
      ></el-col>
      <el-col :span="6"><div class="grid-content bg-purple"></div></el-col>
      <el-col :span="6"
        ><div class="grid-content bg-purple-light"></div
      ></el-col>
    </el-row>
    <el-row>
      <el-col :span="4"><div class="grid-content bg-purple"></div></el-col>
      <el-col :span="4"
        ><div class="grid-content bg-purple-light"></div
      ></el-col>
      <el-col :span="4"><div class="grid-content bg-purple"></div></el-col>
      <el-col :span="4"
        ><div class="grid-content bg-purple-light"></div
      ></el-col>
      <el-col :span="4"><div class="grid-content bg-purple"></div></el-col>
      <el-col :span="4"
        ><div class="grid-content bg-purple-light"></div
      ></el-col>
    </el-row>
    <a id="top" href="#"></a>
    <a id="webIm" href="">
      <span>在线客服</span></a>
  </div>
</template>
<style>
.el-row {
  margin-bottom: 20px;
}
.el-col {
  border-radius: 4px;
}
.bg-purple-dark {
  background: #99a9bf;
}
.bg-purple {
  background: #d3dce6;
}
.bg-purple-light {
  background: #e5e9f2;
}
.grid-content {
  border-radius: 4px;
  min-height: 36px;
}
.row-bg {
  padding: 10px 0;
  background-color: #f9fafc;
}

#top{
  position: fixed;
  right: 25px;
  bottom: 120px;
  display: inline-block;
  width: 50px;
  height: 50px;
  background: url(../assets/home/dingbu.png) center center no-repeat;
  background-size: 100%;
  cursor: pointer;
  text-decoration: none;
  border: none;
  margin: 0px;
  padding: 0px;
  outline: none;
  -webkit-tap-highlight-color: transparent;
}

#webIm {
  position: fixed;
  right: 20px;
  bottom: 50px;
  display: inline-block;
  width: 60px;
  height: 60px;
  background: url(../assets/home/kefu.png) center center no-repeat;
  background-size: 100%;
  cursor: pointer;
  text-decoration: none;
  color: #684029;
  border: none;
  margin: 0px;
  padding: 0px;
  outline: none;
  -webkit-tap-highlight-color: transparent;
}
#webIm span {
  margin-top: 45px;
  margin-top: 60px;
  width: 100%;
  display: inherit;
  text-align: center;
  font-size: 12px;
  color: #73472e;
}
</style>