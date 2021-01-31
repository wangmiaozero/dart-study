/*
Dart中的对象操作符:

    ?     条件运算符 （了解）
    as    类型转换
    is    类型判断
    ..    级联操作 （连缀）  (记住)
*/

class Person {
  String name;
  num age;
  Person(this.name, this.age);
  void printInfo() {
    print("${this.name} ----- ${this.age}");
  }
}

main() {
  Person p = new Person('张三', 20);
  // 判断是否存在这个方法
  p?.printInfo();
  // 判断是否属于这个类
  if (p is Person) {
    p.name = '小樱';
  }
  p.printInfo();

  // 类型转换
  // var p0;

  // p0='';

  // p0=new Person('张三1', 20);

  // // p0.printInfo();
  // (p0 as Person).printInfo();

  Person p1 = new Person('张三1', 20);

  p1.printInfo();

  p1
    ..name = "李四"
    ..age = 30
    ..printInfo();
}
