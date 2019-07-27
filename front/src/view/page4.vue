<template>
  <div class="contain">
    <h1><ruby>{{name}}<rt>wei zhu zheng ming</rt></ruby></h1>
     <img src="../assets/womentable.jpeg" />
     <img src="../assets/mantable.jpeg" />
     <div>
         <button @click="showMan">我需要一个男性素材以供学习</button>
         <button @click="showWoman">我需要一个女性素材以供学习</button>
     </div>
     <img v-show="manF" src="../assets/man15.jpeg" />
     <img v-show="womanF" src="../assets/women15.jpeg" />
     <div @click="showPig" v-show="manF || womanF" class="questionSty">所以猪的体脂会是多少呢？？？</div>
     <div v-show="pigF">
         <img  src="../assets/pig.jpeg" />
         没错和上面的aka郭达相同。
     </div>
  </div>
</template>

<script>

export default {
  name: 'page0',
  components: {
    
  },
  data() {
    return {
      name:'体脂观感',
      manF:false,
      womanF:false,
      pigF:false
    }
  },
  methods:{
      showMan(){
          this.manF = true
          this.womanF = false
      },
      showWoman(){
          this.womanF = true
          this.manF = false
      },
      showPig(){
          this.pigF = true
      }
  }
}
</script>

<style scoped>
.contain {
    background: darkseagreen;
}
h1 {
    margin: 22vw auto;
    color:rgb(160, 89, 1);
}
img {
    width: 100vw;
}
button {
    background: yellow;
    border-radius: 5px;
    margin: 15px;
}
.questionSty {
    font-size: 20px;
    font-weight: bold;
    margin-top: 600px;
}
</style>