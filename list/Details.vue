<template>
  <div>
    <div class="contentBox">
      <!-- 详情页图片 -->
      <div class="orterImg">
        <img :src="imgurl" alt="" />
      </div>
      <!-- 详情页下方 -->
      <div class="details-content">
        <!-- 详情页左侧 -->
        <div class="details-content-left">
          <ul class="bannerImgList">
            <li
              v-for="(item, index) of imgs"
              :key="index"
              @mouseenter="change(item)"
            >
              <img :src="item" alt="" />
            </li>
          </ul>
          <h1 class="pro-details-title">Framboise Cake 蔓生</h1>
          <div class="pro-details-label">
            <a href="" target="_blank">新品 &gt;</a>
            <a href="" target="_blank">当季推荐 &gt;</a>
          </div>
          <div class="pro-details-explain">
            /树莓奶油与浆果慕斯蛋糕/<br />
            /蛋糕底部，覆盆子冻干粉喷洒，恰到好处的一抹红晕/<br />
          </div>
          <li class="distribution-exist">
            <i></i><span>保鲜条件：</span>0－4℃保藏10小时，5℃食用为佳
          </li>
        </div>
        <!-- 详情页右侧 -->
        <div class="details-content-right">
          <!-- 价格 -->
          <p class="details-price">
            ¥<span @click="price">{{ price }}</span
            >{{ showSelectSpec }}
          </p>
          <!-- 建议 -->
          <ul class="details-options">
            <li class="details-options-size"><i></i>约12.5x12.5cm</li>
            <li class="details-options-unmber"><i></i>3-4人</li>
            <li class="details-options-laid">
              <i></i>含5套餐具（蜡烛需单独订购）
            </li>
            <li class="details-options-time"><i></i>最早今天 18:30配送</li>
          </ul>
          <div class="details-size-extra">
            <div
              class="subItem"
              v-for="(item, index) in subItemList"
              :key="index"
            >
              <div class="itemTitle">{{ item.itemTitle }}</div>
              <div class="itemContent">
                <ul>
                  <li
                    v-for="(res, resIndex) in item.itemContent"
                    :key="res"
                    @click="selectItem(res, index, $event, resIndex)"
                    :class="
                      subIndex[index] == resIndex ? 'selectActive' : 'itemLi'
                    "
                  >
                    {{ res }}
                  </li>
                </ul>
              </div>
            </div>
          </div>
          <!-- 购买按钮 -->
          <div class="details-button">
            <button class="buttone"
              v-for="(todo, index) in todos" :key="index" @click="addClass(index)" :class="{ buttons:index==current}"
            >
              {{ todo.text }}
            </button>
          </div>
        </div>
      </div>
      <div class="details-introduction">
        <img src="../assets/details/w-1.jpg" />
        <img src="../assets/details/w-2.jpg" />
        <img src="../assets/details/w-3.jpg" />
        <img src="../assets/details/w-4.jpg" />
        <img src="../assets/details/w-5.jpg" />
        <img src="../assets/details/w-6.jpg" />
        <img src="../assets/details/w-7.jpg" />
        <img src="../assets/details/w-8.jpg" />
        <img src="../assets/details/w-9.jpg" />
        <img src="../assets/details/w-10.jpg" />
        <img style="display: block" src="../assets/details/w-11.jpg" />
        <p style="text-align: center">
          <font color="#999999" size="1"
            >以上图片仅供参考，请以收到实物为准。</font
          >
        </p>
        <div
          style="
            border-bottom: rgb(238, 238, 238) 1px solid;
            width: 100%;
            height: 10px;
          "
        ></div>
        <div style="margin-top: 10px; width: 100%">
          小提示:
          <ol>
            <li>
              1、蛋糕规格及免费配送餐具 ：
              <table style="width: 40%; margin-left: 19px">
                <colgroup>
                  <col style="width: 35%" />
                  <col style="width: 35%" />
                  <col style="width: 30%" />
                </colgroup>
                <tbody>
                  <tr>
                    <td>1.0磅：约13×13(cm)</td>
                    <td>适合3-4人食用</td>
                    <td>免费配送5套餐具</td>
                  </tr>
                  <tr>
                    <td>2.0磅：约17×17(cm)</td>
                    <td>适合7-8人食用</td>
                    <td>免费配送10套餐具</td>
                  </tr>
                  <tr>
                    <td>3.0磅：约23×23(cm)</td>
                    <td>适合11-12人食用</td>
                    <td>免费配送15套餐具</td>
                  </tr>
                  <tr>
                    <td>5.0磅：约30×30(cm)</td>
                    <td>适合15-20人食用</td>
                    <td>免费配送20套餐具</td>
                  </tr>
                </tbody>
              </table>
              <p style="margin-left: 19px">
                订购5磅及5磅以上规格的蛋糕，请与客服人员联系，订购电话：400 650
                2121
              </p>
            </li>
            <li>
              <p class="MsoNormal" style="">
                <font style="" color="#666666" face="Microsoft Yahei" size="2"
                  >退改说明：</font
                >
              </p>
              <p class="MsoNormal" style="">
                <font color="#666666" face="Microsoft Yahei" size="2"
                  ><span lang="EN-US">1.&nbsp;</span
                  >北京、上海、杭州、广州地区距配送时间<span lang="EN-US"
                    >6</span
                  >小时及以上的订单可修改、取消、退订；距配送时间不足<span
                    lang="EN-US"
                    >5</span
                  >小时，订单不再支持修改、取消、退订。（<span lang="EN-US"
                    >22</span
                  >点之后不接受次日<span lang="EN-US">14</span
                  >点之前配送订单修改、退订）<span lang="EN-US"></span
                ></font>
              </p>
              <p class="MsoNormal" style="">
                <font style="" color="#666666" face="Microsoft Yahei" size="2"
                  ><span style="" lang="EN-US">2.&nbsp;</span
                  >苏州、无锡、深圳、天津距配送时间不足<span
                    style=""
                    lang="EN-US"
                    >8</span
                  >小时，订单不再支持修改、取消、退订。（<span
                    style=""
                    lang="EN-US"
                    >22</span
                  >点之后不接受次日<span style="" lang="EN-US">16</span
                  >点之前配送订单修改、退订）</font
                >
              </p>
            </li>
          </ol>
        </div>
      </div>
    </div>
    <a id="top" href="#"></a>
    <a id="webIm" href=""> <span>在线客服</span></a>
  </div>
</template>
<style scoped>
a {
  text-decoration: none;
  color: #684029;
}
ul {
  list-style: none;
  display: block;
  padding-left: 0;
}
.contentBox {
  width: 1200px;
  margin: 0 auto;
  padding-bottom: 50px;
  font-family: "PingFang SC", "Heiti SC", "微软雅黑", Helvetica, Arial;
  font-size: 12px;
  color: #684029;
  overflow: hidden;
}
.orterImg img {
  width: 1200px;
  height: 724px;
}
.details-content {
  display: flex;
}
.bannerImgList {
  display: flex;
  padding-left: 0;
  list-style: none;
}
.bannerImgList li {
  margin-right: 20px;
}
.bannerImgList li img {
  width: 88px;
  height: 48px;
}
.pro-details-title {
  font-size: 20px;
  line-height: 28px;
  padding-top: 20px;
  font-weight: normal;
}
.pro-details-label {
  margin: 20px 0 14px;
  font-size: 0;
}
.pro-details-label a {
  display: inline-block;
  line-height: 18px;
  color: #d5bfa7;
  padding: 0 10px;
  border: 1px solid #d5bfa7;
  border-radius: 100px;
  margin-right: 6px;
  font-size: 12px;
  text-decoration: none;
  outline: none;
  cursor: pointer;
  -webkit-tap-highlight-color: transparent;
}
.pro-details-explain {
  font-size: 12px;
  width: 484px;
  line-height: 2em;
  min-height: 30px;
}
.details-content-left {
  width: 484px;
}
.details-content-right {
  width: 500px;
  margin-left: 216px;
}
.details-price {
  height: 25px;
  line-height: 25px;
  font-size: 18px;
  z-index: 10;
  top: 165px;
  color: #c69c6d;
  padding: 20px 0 10px;
  margin: 0;
}
.details-options {
  margin-top: 8px;
}
.details-options li {
  display: inline-block;
  height: 25px;
  line-height: 25px;
  margin: 5px 0;
  padding-right: 10px;
}
.details-size-extra {
  margin-bottom: 30px;
}
.details-size-extra ul {
  display: flex;
}

.changestyle {
  border-color: #684029;
}
.itemContent li {
  display: flex;
  flex-wrap: wrap;
}
.itemContent ul li {
  padding: 0 10px;
  border-radius: 10px;
  margin-right: 10px;
  margin-top: 10px;
  height: 28px;
  line-height: 28px;
}
.itemLi {
  border: 1px solid #e7e0dd;
}
.selectActive {
  border: 1px solid #684029;
}
.details-button {
  width: 344px;
  height: 40px;
  font-size: 13px;
  display: flex;
}
.buttone {
  width: 167px;
  height: 30px;
  line-height: 30px;
  background: #F4F4F4;
  color: #7A5844;
  text-align: center;
  font-size: 13px;
  border: none;
  cursor: pointer;
  margin-right: 20px;
  outline: none;
}
.buttons {
  background: #684029;
  color: #fff;
}
#top {
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
<script>
export default {
  data() {
    return {
      imgs: [
        require("../assets/details/d-1.jpg"),
        require("../assets/details/d-1-1.jpg"),
        require("../assets/details/d-1-2.jpg"),
        require("../assets/details/d-1-3.jpg"),
      ],
      imgurl: require("../assets/details/d-1.jpg"),
      showSelectSpec: "蔓生(有酒宽)/454g(1.0磅)",
      price: "198",
      subItemList: [
        {
          itemTitle: "规格",
          itemContent: ["蔓生(有酒宽)", "蔓生(无酒款)"],
        },
        {
          itemTitle: "商品规格",
          itemContent: [
            "454g(1.0磅)",
            "908g(2.0磅)",
            "1362g(3.0磅)",
            "2270g(5.0磅)",
          ],
        },
      ],
      selectArr: [], // 存放被选中的值
      subIndex: [],
      current: 0,
      todos: [{ text: "立即购买" }, { text: "加入购物车" }],
    };
  },
  methods: {
    change(imgs) {
      this.imgurl = imgs;
    },
    changeselect(index) {
      this.$refs.refbord.style.border = "1px solid #684029";
    },
    selectSpec(index) {
      let t = this;
      t.showSpec = true;
    },
    selectItem(res, index, enevt, resIndex) {
      let t = this;
      if (t.selectArr[index] !== res) {
        t.selectArr[index] = res;
        t.subIndex[index] = resIndex;
      } else {
        t.selectArr[index] = "";
        t.subIndex[index] = -1; // 去掉选中的颜色
      }
      t.checkItem();
    },
    checkItem: function () {
      var self = this;
      var option = self.subItemList;
      var result = []; // 定义数组存储被选中的值
      console.log(JSON.parse(JSON.stringify(self.selectArr)));
      for (let i in option) {
        result[i] = self.selectArr[i] ? self.selectArr[i] : "";
      }
      for (let i in option) {
        var last = result[i]; // 把选中的值存放到字符串last去
        for (let k in option[i].item) {
          result[i] = option[i].item[k].name; // 赋值，存在直接覆盖，不存在往里面添加name值
          console.log("这里:", JSON.parse(JSON.stringify(result)));
        }
        result[i] = last; // 还原，目的是记录点下去那个值，避免下一次执行循环时避免被覆盖
      }
      self.$forceUpdate(); // 重绘
      self.showSelectSpec = self.selectArr.join("/");
      console.log(self.showSelectSpec);
    },
    addClass:function(index){
                this.current=index;
            }
  },
};
</script>