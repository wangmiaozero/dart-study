/*
 * @Description: 导入系统内置库实现请求数据httpClient
 * @Version: 0.1
 * @Autor: wangmiao
 * @Date: 2021-03-16 21:35:47
 * @LastEditors: wangmiao
 * @LastEditTime: 2021-03-16 21:47:50
 */
import 'dart:io';
import 'dart:convert';

getData() async {
  //1、创建HttpClient对象
  var httpClient = new HttpClient();
  //2、创建Uri对象
  var uri = new Uri.http('news-at.zhihu.com', '/api/3/stories/latest');
  //3、发起请求，等待请求
  var request = await httpClient.getUrl(uri);
  //4、关闭请求，等待响应
  var response = await request.close();
  //5、解码响应的内容
  return await response.transform(utf8.decoder).join();
}

void main() async {
  var result = await getData();
  print(result);
}
