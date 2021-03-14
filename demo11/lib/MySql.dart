/*
 * @Description: 
 * @Version: 0.1
 * @Autor: wangmiao
 * @Date: 2021-03-14 19:51:20
 * @LastEditors: wangmiao
 * @LastEditTime: 2021-03-14 19:51:46
 */
import 'Db.dart';

class Mysql implements Db {
  @override
  late String url;

  Mysql(String s);

  @override
  add(String data) {
    // TODO: implement add
    print('这是mysql的add方法' + data);
  }

  @override
  delete() {
    // TODO: implement delete
    return null;
  }

  @override
  save() {
    // TODO: implement save
    return null;
  }

  remove() {}
}
