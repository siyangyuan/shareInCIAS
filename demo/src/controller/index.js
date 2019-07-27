const Base = require('./base.js');

module.exports = class extends Base {
  indexAction() {
    return this.display();
  }
  async loginAction(){
    this.json({'erCode':200});
  }
  async listAction(){
    //this.json({'erCode':500})
    let model = this.model('man')
    let data = await model.limit(2).select();
    if(think.isEmpty(data)){
      this.json({'erCode':500})
    }else{
      this.json({'erCode':200,'data':data})
    }
  }
  async adAction(){
    return this.redirect('/test')
    //return this.display('/test')
  }
  async editPageAction(){
    const data = this.post();
    let re = await this.model('ppt').where({id:1}).update({pageNow:data.page})
    if (re) {
      this.success({erCode: 200});
    } else {
      this.fail({erCode: 500});
    }
  }
  async getPageAction(){
    let model = this.model('ppt')
    let data = await model.limit(1).select()
    if(think.isEmpty(data)){
      this.json({'erCode':500})
    }else{
      this.json({'erCode':200,'data':data})
    }
  }
  async voteAction(){
    const data = this.post();
    let re = await this.model('chart').where({dataType:data.param}).increment("count",1)
    if (re) {
      this.success({erCode: 200});
    } else {
      this.fail({erCode: 500});
    }
  }
  async getChartAction(){
    const data = this.post()
    let model = this.model('chart')
    let set = JSON.parse(data.option)
    //let data = await this.where({id: ['IN', ids]}).select();
    //this.where({title: ['like', ['welefen', 'suredy']]}).select();
    let re = await model.where({dataType: ['IN', set]}).select()
    if(think.isEmpty(re)){
      this.json({'erCode':500})
    }else{
      this.json({'erCode':200,'data':re})
    }
  }
};
