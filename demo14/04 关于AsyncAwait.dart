/*
 * @Description: async await
 * @Version: 0.1
 * @Autor: wangmiao
 * @Date: 2021-03-16 21:53:19
 * @LastEditors: wangmiao
 * @LastEditTime: 2021-03-16 21:56:35
 */
/*
async和await
  这两个关键字的使用只需要记住两点：
    只有async方法才能使用await关键字调用方法
    如果调用别的async方法必须使用await关键字
    async是让方法变成异步。
    await是等待异步方法执行完成。
*/
testAsync() async {
  return 'Hello async';
}

void main() async {
  var result = await testAsync();
  print(result);
}
