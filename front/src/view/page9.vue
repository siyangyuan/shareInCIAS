<template>
  <div class="contain">
    <h2>{{name}}</h2>
    <h3>以下哪个运动可以有效提升力量（你有两票）</h3>
    <div>
      <p>唱 跳 rap 篮球。</p>
      <img src="../assets/caixukun.gif" />
      <button @click="vote('caixukun')" v-show="btnAble">我觉得可信</button>
    </div>
    <div>
      <p>体悟天道 潜心修仙。</p>
      <img src="../assets/xiuxian.gif" />
      <button @click="vote('xiuxian')" v-show="btnAble">我觉得可信</button>
    </div>
    <div>
      <p>一丝不挂 引体向上。</p>
      <img src="../assets/xiaoxiongmao.gif" />
      <button @click="vote('xiongmao')" v-show="btnAble">我觉得可信</button>
    </div>
    <div>
      <p>陪妈妈买菜 并加入一些sauce</p>
      <img src="../assets/maicai.jpeg" />
      <button @click="vote('maicai')" v-show="btnAble">我觉得可信</button>
    </div>
    <div>
      <p>约好朋友 练习摔跤</p>
      <img src="../assets/bili.gif" />
      <button @click="vote('bili')" v-show="btnAble">我觉得可信</button>
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
      name: "敲黑板！！！考试啦",
      btnAble: true,
      count:0
    };
  },
  watch : {
      count(val){
          if(val == 2){
              this.disBtn()
          }
      }
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
      this.count += 1
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
p {
    color: brown;
    font-size: 20px;
    font-weight: bold;
}
</style>