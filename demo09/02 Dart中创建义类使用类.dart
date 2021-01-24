/*

Dart是一门使用类和单继承的面向对象语言，所有的对象都是类的实例，并且所有的类都是Object的子类

*/

class Person {
  String name = '雏田';
  int age = 18;
  void getInfo() {
    // print("$name  ------  $age"); // 第一种写法
    print("${this.name} ----  ${this.age}"); // 第二种写法
  }

  void setinfo(int age) {
    this.age = age;
  }
}

void main() {
  // 实例化
  var p1 = new Person();
  print(p1.name); // 雏田
  p1.getInfo(); // 雏田 ----  18

  print('------------------------------------');

  Person p2 = new Person();
  p2.setinfo(26);
  p2.getInfo(); // 雏田 ----  26
}
