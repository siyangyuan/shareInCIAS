<template>
  <div class="contain">
    <h1>
      <ruby>
        {{name}}
        <rt>kai che huan jie</rt>
      </ruby>
    </h1>
    <h3>说点什么吧（你有三票）</h3>
    <div class="pool" v-if="btnAble">
      <div @click="vote('drive')">教练我想学开车</div>
      <div @click="vote('guiyi')">教练我想皈依</div>
      <div @click="vote('xianchang')">教练我建议你听下自己的现场</div>
      <div @click="vote('xuqiu')">教练我想给你加需求</div>
      <div @click="vote('xiong')">教练怎么练胸</div>
      <div @click="vote('free')">教练你有freestyle吗</div>
      <div @click="vote('dance')">教练我想学街舞</div>
      <div @click="vote('bei')">教练怎么练背</div>
      <div @click="vote('year')">year！body</div>
      <div @click="vote('code')">讲下代码吧</div>
      <div @click="vote('luan')">健身房乱吗</div>
    </div>
  </div>
</template>

<script>
import https from "../js/axios.js";
export default {
  name: "page0",
  components: {},
  data() {
    return {
      name: "这是一个答疑环节",
      btnAble: true,
      count:0
    };
  },
  watch:{
      count(val){
          if(val == 3){
              this.btnAble = false
          }
      }
  },
  methods:{
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
  }
};
</script>

<style scoped>
.contain {
  background: darkseagreen;
}
h1 {
  margin: 12vw auto;
  color: brown;
}
.pool div {
  background: darkorange;
  color: whitesmoke;
  margin: 10px;
  font-size: 20px;
  font-weight: bold;
  padding: 10px;
  border-radius: 15px;
}
.pool {
    display: flex;
    flex-direction: row;
    justify-content: space-between;
    flex-wrap: wrap;
}
</style>


