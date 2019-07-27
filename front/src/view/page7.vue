<template>
  <div class="contain">
    <h2><ruby>{{name}}<rt>wen ming fu iang he xie</rt></ruby></h2>
    <img src="../assets/jinzhui.jpg"/>
  </div>
</template>

<script>

export default {
  name: 'page0',
  components: {
    
  },
  data() {
    return {
      name:'一些康复知识'
    }
  },
}
</script>

<style scoped>
.contain {
    background: darkseagreen;
}
h2 {
    margin: 12vw auto;
    color: brown;
}
img {
    width: 100vw;
}
</style>