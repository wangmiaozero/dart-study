/*
 * @Description: 接口分离
 * @Version: 0.1
 * @Autor: wangmiao
 * @Date: 2021-03-14 19:48:43
 * @LastEditors: wangmiao
 * @LastEditTime: 2021-03-14 19:56:09
 */
/*
  和Java一样，dart也有接口，但是和Java还是有区别的。

  首先，dart的接口没有interface关键字定义接口，而是普通类或抽象类都可以作为接口被实现。

  同样使用implements关键字进行实现。

  但是dart的接口有点奇怪，如果实现的类是普通类，会将普通类和抽象中的属性的方法全部需要覆写一遍。
  
  而因为抽象类可以定义抽象方法，普通类不可以，所以一般如果要实现像Java接口那样的方式，一般会使用抽象类。

  建议使用抽象类定义接口。

  定义一个DB库 支持 mysql  mssql  mongodb

  mysql  mssql  mongodb三个类里面都有同样的方法

*/

import 'lib/MsSql.dart';
import 'lib/MySql.dart';

main() {
  Mysql mysql = new Mysql('http://127.0.0.1:3000');
  mysql.add('刻晴'); // 这是mysql的add方法刻晴

  MsSql msSql = new MsSql();
  msSql.url = 'http://127.0.0.1:7001';
  mysql.add('五更瑠璃'); // 这是mysql的add方法五更瑠璃
}
