<template>
  <div id="app">
    <!-- <img alt="Vue logo" src="./assets/logo.png"> -->
    <div class="hidden">
      <div class="hidden1" @click="hid1"></div>
      <div class="hidden2" @click="hid2"></div>
    </div>
    <router-view class="router" @click="clear"/>
    <!-- <div @click="goto">page1</div> -->
    <div class="btnGroup" v-if="showbtn">
      <div v-for="i in btnSet" :key="i.index" @click="goto(i.index)">{{i.label}}</div>
    </div>
  </div>
</template>

<script>
import HelloWorld from "./components/HelloWorld.vue";
import https from "./js/axios.js";
import { setInterval } from 'timers';

export default {
  name: "app",
  components: {
    HelloWorld
  },
  mounted() {
    this.init();
  },
  data() {
    return {
      name: "zx",
      btnSet: [],
      hiKey: 0,
      hiKey2: 0,
      showbtn: false,
      currentPage:0
    };
  },
  watch: {
    hiKey2(val) {
      if (val == 7) {
        this.showbtn = true;
      }
    }
  },
  methods: {
    init() {
      let i = 0;
      let re = [];
      while (i < 15) {
        re.push({
          label: i + "name",
          index: i
        });
        i++;
      }
      this.btnSet = re;
      this.$router.push("/page" + this.currentPage);
      this.heartBeat()
    },

    heartBeat:function (){
      let self = this
      setInterval(() => {
        https.fetchPost("/index/getPage",{})
        .then(data => {
          console.log('nowPage' + data.data[0].pageNow);
          let now = data.data[0].pageNow
          if(self.currentPage == now){
            return
          }else{
            self.$router.push("/page" + now);
            self.currentPage = now
          }
        })
        .catch(err => {
          console.log(err);
        });
      },1000)
    },

    test: function() {
      https
        .fetchPost("/index/list", {})
        .then(data => {
          console.log(data.data);
        })
        .catch(err => {
          console.log(err);
        });
    },
    goto: function(i) {
      console.log("ha" + i);
      
      https
        .fetchPost("/index/editPage", {page:i})
        .then(data => {
        })
        .catch(err => {
          console.log(err);
        });
    },
    hid1() {
      if (this.hiKey2 != 0) {
        this.hiKey = 0;
      }else{
        this.hiKey += 1;
      }
      
      console.log(this.hiKey + '   '+ this.hiKey2)
    },
    hid2() {
      if (this.hiKey != 3) {
        this.hiKey2 = 0;
      }else{
        this.hiKey2 += 1;
      }
      
      console.log(this.hiKey + '   '+ this.hiKey2)
    },
    clear(){
      console.log('clear')
      this.hiKey2 = 0;
      this.hiKey = 0;
    }
    
  }
};
</script>

<style>
#app {
  font-family: "Avenir", Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}
.btnGroup {
  display: flex;
  flex-direction: row;
  flex-wrap: wrap;
  width: 50vw;
}
.btnGroup div {
  width: 40px;
  height: 25px;
  background: darkgoldenrod;
  margin: 20px;
  font-size: 1.5vw;
  z-index: 2;
}
.hidden {
  display: flex;
  flex-direction: row;
  justify-content: space-between;
}
.hidden1 {
  width: 10vw;
  height: 10vw;
  /* background: darkcyan; */
  z-index: 1;
}
.hidden2 {
  width: 10vw;
  height: 10vw;
  /* background: darkcyan; */
  z-index: 1;
}
.router {
  position: absolute;
  left: 0;
  top: 0;
  width: 100vw;
  height: 100vh;
}
</style>
