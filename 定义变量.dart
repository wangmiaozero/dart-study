/* 
  Dart的命令规则:
    1.变量名必须由数字,字母,下划线和美元符号($)组成。
    2.注意: 标识符开头不能是数字
    3.标识符不能保留和关键字
    4.变量的名字和区分大小写的如:age和Age是不同的变量.在实际的运用中,也建议,不要用一个
    5.标识符(变量名称)一定要见名思意: 变量名称建议用名词,方法名建议用动词
 */

void main() {
  // 声明变量
  var str = '你好dart';
  var myNun = 123;
  print(str);
  print(myNun);
  /* 字符串 */
  String str_1 = '你好dart 字符';
  /* 数值类型 */
  int nun = 456;
  print(nun);
  print(str_1);

  /* 常亮 */
  const pi = 3.14159;
  print(pi);
  final PI = 3.14159;
//  PI = 123;
  print(PI);
  final createTime = new DateTime.now();
  print(createTime);
 //区别：final 可以开始不赋值 只能赋一次 ; 而final不仅有const的编译时常量的特性，最重要的它是运行时常量，并且final是惰性初始化，即在运行时第一次使用前才初始化
}