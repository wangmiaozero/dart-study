/*
 * @Description: Dart中的mixins
 * @Version: 0.1
 * @Autor: wangmiao
 * @Date: 2021-03-14 21:29:15
 * @LastEditors: wangmiao
 * @LastEditTime: 2021-03-14 21:56:13
 */

/*
mixins的中文意思是混入，就是在类中混入其他功能。

在Dart中可以使用mixins实现类似多继承的功能


因为mixins使用的条件，随着Dart版本一直在变，这里讲的是Dart2.x中使用mixins的条件：

  1、作为mixins的类只能继承自Object，不能继承其他类
  2、作为mixins的类不能有构造函数
  3、一个类可以mixins多个mixins类
  4、mixins绝不是继承，也不是接口，而是一种全新的特性
*/

class Person {
  String name;
  num age;
  Person(this.name, this.age);
  printInfo() {
    print('${this.name}----${this.age}');
  }

  void run() {
    print("Person Run");
  }
}

class A {
  String info = 'this is A';
  void printA() {
    print('A');
  }
}

class B {
  void printB() {
    print('B');
  }

  void run() {
    print("B Run");
  }
}

class C extends Person with B, A {
  C(String name, num age) : super(name, age);
}

class D with A, B {}

void main() {
  var c = new C('雏田', 20);
  c.printInfo(); // 雏田----20
  c.printB(); // B
  print(c.info); // this is A

  /*
    mixins的实例类型是什么？

    很简单，mixins的类型就是其超类的子类型。
  */
  var d = new D();
  print(d is D); // true
  print(d is A); // true
  print(d is B); // true
}
