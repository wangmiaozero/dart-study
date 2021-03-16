/*
 * @Description: Dart中导入自己本地库
 * @Version: 0.1
 * @Autor: wangmiao
 * @Date: 2021-03-16 21:24:12
 * @LastEditors: wangmiao
 * @LastEditTime: 2021-03-16 21:27:14
 */
import 'lib/Animal.dart';

main() {
  var a = new Animal('雏田', 20);
  print(a.getName());
  print(a.execRun());
}
