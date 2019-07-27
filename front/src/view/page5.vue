<template>
  <div class="contain">
    <h2><ruby>{{name}}<rt>wen ming fu iang he xie</rt></ruby></h2>
    <video src="../assets/eat.mp4" controls="controls"/>
  </div>
</template>

<script>

export default {
  name: 'page0',
  components: {
    
  },
  data() {
    return {
      name:'白人男子街头竟遭。。。'
    }
  },
}
</script>

<style scoped>
.contain {
    background: darkseagreen;
}
video {
    width: 100vw;
}
h2 {
    margin: 12vw auto;
    color: brown;
}
</style>