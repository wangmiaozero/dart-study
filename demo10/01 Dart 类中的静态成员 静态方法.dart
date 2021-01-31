/*
  Dart中的静态成员:

  1、使用static 关键字来实现类级别的变量和函数

  2、静态方法不能访问非静态成员，非静态方法可以访问静态成员

*/
class Person {
  static String name = '雏田';
  int age = 20;

  static void show() {
    print('静态方法');
  }

  // 非静态方法可以访问静态成员以及非静态成员
  void printInfo() {
    print(name); // 访问静态属性
    print(this.age); //访问非静态属性
    show(); // 调用静态方法
  }

  //静态方法
  static void printUserInfo() {
    print(name); // 静态属性
    show(); // 静态方法
    // print(this.age); //静态方法没法访问非静态的属性
    /** 这里会报错
     * but got 'this'.
     * print(this.age); //静态方法没法访问非静态的属性
     */
    // this.printInfo(); //静态方法没法访问非静态的方法
    // printInfo(); 这里会报错
  }
}

main() {
  // 静态属性和方法可以直接调用，不需要new
  print(Person.name); // 雏田
  Person.show(); // 静态方法
  Person.printUserInfo();
  /**
   * 雏田
   * 静态方法
   */
}
