<template>
  <div class="contain">
    <h2>{{name}}</h2>
    <div>
      小红书万人收藏瘦腿方法。
      <img src="../assets/xiaohongshu.jpeg" />
      <button @click="vote('redBook')" v-show="btnAble">我觉得可信</button>
    </div>
    <div>
      愉悦之暴汗服。
      <img src="../assets/baohanfu.jpeg" />
      <button @click="vote('baoHan')" v-show="btnAble">我觉得可信</button>
    </div>
    <div>
      加入一个创业公司，通过加班来减肥。
      <button @click="vote('compony')" v-show="btnAble">我觉得可信</button>
    </div>
    <div>
      加入Bruce的跑团，跑足里程领红包。
      <img src="../assets/hongbao.jpeg" />
      <button @click="vote('run')" v-show="btnAble">我觉得可信</button>
    </div>
  </div>
</template>

<script>
import https from "../js/axios.js";
export default {
  name: "page1",
  components: {},
  data() {
    return {
      name: "你觉认为以下活动哪个可以帮你塑形 ？",
      btnAble: true,
    };
  },
  methods: {
    vote(i) {
      https
        .fetchPost("/index/vote", { param: i })
        .then(data => {
          console.log(data.data);
        })
        .catch(err => {
          console.log(err);
        });
      this.disBtn();
    },
    disBtn() {
      this.btnAble = false;
    },
  },
};
</script>

<style scoped>
.contain {
  background: white;
}
.contain div {
  margin-top: 5vw;
  border: 3px solid darkorange;
  border-radius: 15px;
  margin-bottom: 15px;
}
img {
  width: 80vw;
  height: 140vw;
  margin: 20px;
}
h2 {
  margin: 10vw auto;
  color: rgb(78, 75, 75);
}

button {
  /* background: darkcyan;
  color: white; */
  font-size: 15px;
  margin-top: 10px;
  margin-bottom: 10px;
  border-radius: 8px;
}
</style>


