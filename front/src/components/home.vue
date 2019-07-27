<template>
  <div class="contain">
    <div>{{name}}</div>
    <div id="myChart" class="chartSty"></div>
    <div class="btnGrop">
      <button @click="vote('test')" :disabled="btnAble">猫</button>
      <button @click="vote('testF1')">狗</button>
      <button @click="vote('testF2')">猴</button>
      <button @click="showChart">chart</button>
    </div>
  </div>
</template>

<script>
import https from "../js/axios.js";

export default {
  name: "home",
  components: {},
  data() {
    return {
      name: "page0",
      btnAble: false,
      chart: {},
    };
  },
  mounted() {
    this.chart = this.getChart();
    this.drawLine();
  },
  methods: {
    getChart() {
      return this.$echarts.init(document.getElementById("myChart"));
    },
    drawLine() {
      // 基于准备好的dom，初始化echarts实例
      let myChart = this.chart;
    },
    showChart() {

      let option = {
        title: {
          text: "小动物",
          x: "center",
          y:"top"
        },
        tooltip: {
          trigger: "item",
          formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        toolbox: {
          show: true,
          feature: {
            mark: { show: true },
            dataView: { show: true, readOnly: false },
            magicType: {
              show: true,
              type: ["pie", "funnel"]
            },
            restore: { show: true },
          }
        },
        calculable: true,
        series: [
          {
            name: "动物们",
            type: "pie",
            radius: [30, 110],
            center: ["50%", "50%"],
            roseType: "area",
            data: [
              { value: 10, name: "rose1" },
              { value: 5, name: "rose2" },
              { value: 15, name: "rose3" },
              { value: 25, name: "rose4" },
              { value: 20, name: "rose5" },
              { value: 35, name: "rose6" },
              { value: 30, name: "rose7" },
              { value: 40, name: "rose8" }
            ]
          }
        ]
      };
      let set = JSON.stringify(['test','testF1','testF2'])
      https.fetchPost("/index/getChart",{option:set})
        .then(data => {
          let result = data.data
          let opRe = []
          result.map((v) => {
            let i = {
              value:v.count,
              name:v.name
            }
            opRe.push(i)
          })
          console.log(opRe)
          option.series[0].data = opRe
          this.chart.setOption(option)
        })
        .catch(err => {
          console.log(err);
        });
      return
      
    },
    disBtn() {
      this.btnAble = true;
    },
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
    }
  }
};
</script>

<style>
.contain {
  width: 100vw;
  height: 100vh;
  background: whitesmoke;
}
.btnGrop button {
  display: inline;
  margin: 15px;
}
.chartSty {
  width: 100vw;
  height: 50vh;
  margin-top: 20vh;
}
</style>


