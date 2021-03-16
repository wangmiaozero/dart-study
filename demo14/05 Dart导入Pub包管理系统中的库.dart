/*
 * @Description: Dart 导入Pub包管理系统中的库
 * @Version: 0.1
 * @Autor: wangmiao
 * @Date: 2021-03-16 22:01:17
 * @LastEditors: wangmiao
 * @LastEditTime: 2021-03-16 22:30:40
 */
/*
pub包管理系统:


1、从下面网址找到要用的库
        https://pub.dev/packages
        https://pub.flutter-io.cn/packages
        https://pub.dartlang.org/flutter/

2、创建一个pubspec.yaml文件，内容如下

    name: xxx
    description: A new flutter module project.
    dependencies:  
        http: ^0.12.0+2
        date_format: ^1.0.6

3、配置dependencies

4、运行dart pub get 获取远程库

5、看文档引入库使用
*/
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:date_format/date_format.dart';

main() async {
  var url =
      "http://www.phonegap100.com/appapi.php?a=getPortalList&catid=20&page=1";

  // Await the http get response, then decode the json-formatted responce.
  var response = await http.get(url);
  if (response.statusCode == 200) {
    var jsonResponse = convert.jsonDecode(response.body);

    print(jsonResponse);
  } else {
    print("Request failed with status: ${response.statusCode}.");
  }

  print(formatDate(
      DateTime(1989, 2, 21), [yyyy, '-', mm, '-', dd])); // 1989-02-21
  print(formatDate(DateTime(1989, 2, 21), [yy, '-', m, '-', dd])); // 89-2-21
  print(formatDate(DateTime(1989, 2, 1), [yy, '-', m, '-', d])); // 89-2-1

  print(
      formatDate(DateTime(1989, 2, 1), [yy, '-', MM, '-', d])); // 89-February-1
  print(formatDate(DateTime(1989, 2, 21), [yy, '-', M, '-', d])); // 89-Feb-21

  print(formatDate(DateTime(1989, 2, 1), [yy, '-', M, '-', d])); // 89-Feb-1

  print(formatDate(
      DateTime(2018, 1, 14), [yy, '-', M, '-', DD])); // 18-Jan-Sunday
  print(formatDate(DateTime(2018, 1, 14), [yy, '-', M, '-', D])); // 18-Jan-Sun

  print(formatDate(
      DateTime(1989, 02, 1, 15, 40, 10), [HH, ':', nn, ':', ss])); // 15:40:10

  print(formatDate(DateTime(1989, 02, 1, 15, 40, 10),
      [hh, ':', nn, ':', ss, ' ', am])); // 03:40:10 PM

  print(formatDate(DateTime(1989, 02, 1, 15, 40, 10),
      [hh, ':', nn, ':', ss, ' ', am])); // 03:40:10 PM

  print(formatDate(DateTime(1989, 02, 1, 15, 40, 10), [hh])); // 03
  print(formatDate(DateTime(1989, 02, 1, 15, 40, 10), [h])); // 3

  print(formatDate(DateTime(1989, 02, 1, 5), [am])); // AM
  print(formatDate(DateTime(1989, 02, 1, 15), [am])); // PM

  print(formatDate(DateTime(1989, 02, 1, 15, 40, 10),
      [HH, ':', nn, ':', ss, z])); // 15:40:10+0800

  print(formatDate(DateTime(1989, 02, 1, 15, 40, 10),
      [HH, ':', nn, ':', ss, ' ', Z])); //15:40:10 CST

  print(formatDate(DateTime(1989, 02, 21), [yy, ' ', w])); // 89 4
  print(formatDate(DateTime(1989, 02, 21), [yy, ' ', W])); // 89 8

  print(formatDate(DateTime(1989, 12, 31), [yy, '-W', W])); // 89-W53
  print(formatDate(DateTime(1989, 1, 1), [yy, '-', mm, '-w', W])); // 89-01-w1

  print(formatDate(DateTime(1989, 02, 1, 15, 40, 10),
      [HH, ':', nn, ':', ss, ' ', Z])); // 15:40:10 CST

  print(formatDate(DateTime(2020, 04, 18, 21, 14), [H, '\\h', n])); // 21h14
}
