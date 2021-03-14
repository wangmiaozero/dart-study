/*
 * @Description: 
 * @Version: 0.1
 * @Autor: wangmiao
 * @Date: 2021-03-14 19:50:29
 * @LastEditors: wangmiao
 * @LastEditTime: 2021-03-14 19:51:59
 */
import 'Db.dart';

class MsSql implements Db {
  @override
  late String url;

  @override
  add(String data) {
    // TODO: implement add
    print('这是mssql的add方法' + data);
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
}
