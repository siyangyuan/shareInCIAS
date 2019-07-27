<template>
  <div>
    <div id="page2Chart" class="chartSty"></div>
  </div>
</template>

<script>
import https from "../js/axios.js";
export default {
  name: "page2",
  
  components: {},
  data() {
    return {
      name: "page2",
      chart: {}
    };
  },
  mounted() {
    this.chart = this.getChart();
    this.showChart()
  },
  methods: {
    getChart() {
      return this.$echarts.init(document.getElementById("page2Chart"));
    },
    showChart() {
      let option = {
        title: {
          text: "大家都选了什么？？？",
          x: "center",
          y: "top"
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
            restore: { show: true }
          }
        },
        calculable: true,
        series: [
          {
            name: "有效锻炼",
            type: "pie",
            radius: [30, 110],
            center: ["50%", "50%"],
            roseType: "area",
            data: [
              { value: 10, name: "rose1" },
              { value: 5, name: "rose2" },
              { value: 15, name: "rose3" },
            ]
          }
        ]
      };
      let set = JSON.stringify(["caixukun", "xiuxian", "xiongmao","maicai","bili"]);
      https
        .fetchPost("/index/getChart", { option: set })
        .then(data => {
          let result = data.data;
          let opRe = [];
          result.map(v => {
            let i = {
              value: v.count,
              name: v.name
            };
            opRe.push(i);
          });
          console.log(opRe);
          option.series[0].data = opRe;
          this.chart.setOption(option);
        })
        .catch(err => {
          console.log(err);
        });
      return;
    }
  }
};
</script>

<style scoped>
</style>

