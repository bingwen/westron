var koa = require('koa'), app = koa();

app.use(function *(next){
  var start = new Date;
  yield next;
  var ms = new Date - start;
  this.set('X-Response-Time', ms + 'ms');
  console.log('X-Response-Time - %s', this.method, this.url, ms);
});

app.use(function *(next){
  var start = new Date;
  yield next;
  var ms = new Date - start;
  console.log('%s %s - %s', this.method, this.url, ms);
});

app.use(function*(){
    this.body = 'Hello Koa';
});

app.listen(80);
