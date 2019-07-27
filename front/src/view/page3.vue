<template>
  <div class="contain">
    <h2><ruby>{{name}}<rt>fei zao yuan liao</rt></ruby></h2>
    <video src="../assets/fat.mp4" controls="controls"/>
    <div class="tip">
        tip:脂肪可以做肥皂的原料哦～～～
        有点恶心，所以我做的让你看不清
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
      name:'抽脂原理'
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
video {
    width: 100vw;
}
.tip {
    margin-top: 10vw;
    font-size: 10px;
    font-weight: 100;
    color: rgba(0, 0, 0, 0.2)
}
</style>


