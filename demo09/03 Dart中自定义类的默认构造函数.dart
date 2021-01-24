/* 
   Dart中自定义类的默认构造函数
 */
class Person {
  String name = '雏田';
  int age = 18;

  // 默认构造函数
  Person() {
    print('这是构造函数里面的内容  这个方法在实例化的时候触发');
  }

  void printInfo() {
    print("${this.name} ----  ${this.age}"); // 第二种写法
  }
}

class Persons {
  String name;
  int age;
  // 默认构造函数
  /*  Persons(String name, int age) {
    this.name = name;
    this.age = age;
  } */
  //默认构造函数的简写
  Persons(this.name, this.age);

  void printInfo() {
    print("${this.name} --- ${this.age}");
  }
}

void main() {
  Person p1 = new Person();
  p1.printInfo();
  /* 
    这是构造函数里面的内容  这个方法在实例化的时候触发
    雏田 ----  18
   */

  Persons p2 = new Persons('五更琉璃', 16);
  p2.printInfo();
  /* 
    五更琉璃 --- 16
   */

  Persons p3 = new Persons('嘉怡', 25);
  p3.printInfo();
  /* 
      嘉怡 --- 25
  */
}
