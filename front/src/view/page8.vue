<template>
  <div class="contain">
    <h2><ruby>{{name}}<rt>xxx ♂ xxx</rt></ruby></h2>
    <img src="../assets/yuanfang.jpeg" />
  </div>
</template>

<script>

export default {
  name: 'page0',
  components: {
    
  },
  data() {
    return {
      name:'一些哲学，诗和远方'
    }
  },
}
</script>

<style scoped>
.contain {
    background: darkseagreen;
}
h2 {
    margin: 5vw auto;
    color: brown;
}
img {
    width: 100vw;
}
</style>