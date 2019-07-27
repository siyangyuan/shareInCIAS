<template>
  <div class="contain">
    <h2>干货</h2>
    <div>
      <h3>输入总热量（kcal）</h3>
      <p>
        <span>增肌 ：</span>阶段性目标体重kg *
        <span>50</span>
      </p>
      <p>
        <span>减脂 ：</span>阶段性目标体重kg *
        <span>30</span>
      </p>
      <p>
        <span>维持/塑形 ：</span>阶段性目标体重kg *
        <span>40</span>
      </p>
    </div>
    <div>
      <h3>碳水化物，蛋白质，脂肪配比</h3>
      <p>
        <span>增肌 ：</span>
        <span>6:2:2</span>或<span>6:3:1</span>
      </p>
      <p>
         <span>减脂 ：</span>
        <span>5:3:2</span>或<span>4:4:2</span>
      </p>
      <p>
         <span>维持/塑形 ：</span>
        <span>5:3:2</span>或<span>5:2.5:2.5</span>
      </p>
    </div>
    <div>
        <h3>训练,关键</h3>
        <p>
            <span>减脂</span>：心率<span>135</span>/min，持续<span>45</span>min,以上
        </p>
        <p>
            <span>增肌</span>：<span>6</span>RM ~ <span>12</span>RM * <span>4</span>组
        </p>
    </div>
    薄荷营养师
  </div>
</template>

<script>
export default {
  name: "page0",
  components: {},
  data() {
    return {
      name: "体脂观感",
      manF: false,
      womanF: false,
      pigF: false
    };
  },
  methods: {
    showMan() {
      this.manF = true;
      this.womanF = false;
    },
    showWoman() {
      this.womanF = true;
      this.manF = false;
    },
    showPig() {
      this.pigF = true;
    }
  }
};
</script>

<style scoped>
.contain {
  background: darkseagreen;
}
h3 {
  margin: 20px auto;
  color: rgb(160, 89, 1);
}
img {
  width: 100vw;
}
.contain div {
  margin: 20px;
  border: 5px solid rgb(143, 103, 75);
  border-radius: 15px;
  min-height: 10px;
}
span {
  font-weight: bolder;
  font-size: 17px;
}
</style>