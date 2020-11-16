<template>
  <div>
    <div>
    <!-- 商品分类选项卡开始 -->
      <!-- 从数据库获取分类信息，循环读取成选项卡 -->
      <el-container v-model="active">
        <el-header
          v-for="(item, index) of category"
          :key="index"
          :id="item.id.toString()"
        >
          {{ item.category_name }}
        </el-header>
      </el-container>
      <!-- 商品分类选项卡结束 -->
    </div>
  </div>
</template>

<script>
export default {
  // data() {
  //   return {
  //     // 默认被选定的顶部选项卡及面板
  //     active: "1",
  //   };
  // },
  mounted() {
    //通过axios工具向web服务器发送请求，获取分类信息数组
    this.axios.get("/type").then((res) => {
      this.category = res.data.results;
      console.log(category);
    });
    // 调用获取数据的自定义函数 - loadData();
    this.loadData(this.active, this.page);
  },
}
</script>