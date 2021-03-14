/*
 * @Description: 
 * @Version: 0.1
 * @Autor: wangmiao
 * @Date: 2021-03-14 19:49:33
 * @LastEditors: wangmiao
 * @LastEditTime: 2021-03-14 19:50:09
 */
abstract class Db {
  // 接口： 约定，规范
  late String url; // 数据库链接地址
  add(String data);
  save();
  delete();
}
