var koa = require('koa'), app = koa();

app.use(function*(){
    this.body = 'Hello Koa';
});

app.listen(80);
