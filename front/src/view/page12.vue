
<template>
  <div>
    <div id="page10Chart" class="chartSty"></div>
    <div class="thank">
      CIAS talk
    </div>
    <div>
      share your thoughts
    </div>
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
      chart: {},
      colorSet: []
    };
  },
  mounted() {
    this.initcolor();
    this.chart = this.getChart();
    this.showChart();
  },
  methods: {
    getChart() {
      return this.$echarts.init(document.getElementById("page10Chart"));
    },
    showChart() {
      let option = {
        title: {
          text: "我的分享@ZX,你的词云@CIAS",
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
            dataView: { show: true, readOnly: false }
          }
        },
        series: [
          {
            name: "答疑",
            type: "wordCloud",
            size: ["100vw", "80vh"],
            textRotation: [0, 45, 90, -45],
            textPadding: 0,
            autoSize: {
              enable: true,
              minSize: 14
            },
            data: [
              {
                name: "Sam S Club",
                value: 10000,
                itemStyle: {
                  normal: {
                    color: "blue"
                  }
                }
              },
              {
                name: "Macys",
                value: 6181,
                itemStyle: this.createRandomItemStyle()
              },
              {
                name: "Amy Schumer",
                value: 4386,
                itemStyle: this.createRandomItemStyle()
              }
            ]
          }
        ]
      };
      let set = JSON.stringify([
        "drive",
        "guiyi",
        "xuqiu",
        "xiong",
        "free",
        "dance",
        "bei",
        "year",
        "code",
        "xianchang"
      ]);
        https
          .fetchPost("/index/getChart", { option: set })
          .then(data => {
            let result = data.data;
            let opRe = [];
            result.map((v,index) => {
              let i = {
                value: v.count,
                name: v.name,
                itemStyle:this.createRandomItemStyle()
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
    },
    initcolor() {
      for (let i = 0; i < 20; i++) {
        let obj = this.createRandomItemStyle();
        this.colorSet.push(obj);
      }
      console.log(this.colorSet);
    },
    createRandomItemStyle() {
      return {
        normal: {
          color:
            "rgb(" +
            [
              Math.round(Math.random() * 160),
              Math.round(Math.random() * 160),
              Math.round(Math.random() * 160)
            ].join(",") +
            ")"
        }
      };
    }
  }
};
</script>

<style scoped>
.thank {
  margin-top: 10vh;
  color: darkturquoise;
  font-size: 25px;
  font-weight: bold;
}
</style>

