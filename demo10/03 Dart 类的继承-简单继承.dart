/*
dart 类的继承-简单继承
面向对象的三大特性：封装 、继承、多态

Dart中的类的继承：  
    1、子类使用extends关键词来继承父类
    2、子类会继承父类里面可见的属性和方法 但是不会继承构造函数
    3、子类能复写父类的方法 getter和setter

*/

class Person {
  String name = '张三';
  num age = 20;
  void printInfo() {
    print("${this.name}---${this.age}");
  }
}

class Web extends Person {}

class Person1 {
  String name;
  num age;
  Person1(this.name, this.age);
  void printInfo() {
    print("${this.name}---${this.age}");
  }
}

// Dart 类的继承 super关键词的使用  实例化自类给父类构造函数传参
class Web1 extends Person1 {
  Web1(String name, num age) : super(name, age);
}

class Person2 {
  String name;
  num age;
  Person2(this.name, this.age);
  void printInfo() {
    print("${this.name}---${this.age}");
  }
}

// Dart 类的继承 实例化自类给命名构造函数传参
class Web2 extends Person2 {
  String sex;
  Web2(String name, num age, String sex) : super(name, age) {
    this.sex = sex;
  }
  run() {
    print("${this.name}---${this.age}--${this.sex}");
  }
}

main() {
  // 继承了父类
  Web w = new Web();
  print(w.name); // 张三
  w.printInfo(); // 张三---20

  Web1 w1 = new Web1('雏田', 18);
  w1.printInfo(); // 雏田---18

  // Dart 类的继承 实例化自类给命名构造函数传参
  Web2 w2 = new Web2('鸣人', 18, "男");
  w2.printInfo();
  w2.run();
}
