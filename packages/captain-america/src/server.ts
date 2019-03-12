import Koa from 'koa';
import Router from 'koa-router';

const app = new Koa();
const router = new Router();

router.get('/health', async (ctx: Koa.Context) => {
  ctx.body = 'Hello World!';
});

app.use(router.routes());

app.listen(8080);
