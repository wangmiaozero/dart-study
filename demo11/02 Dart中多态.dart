/*
 * @Description: Dart中多态
 * @Version: 0.1
 * @Autor: wangmiao
 * @Date: 2021-03-14 17:13:17
 * @LastEditors: wangmiao
 * @LastEditTime: 2021-03-14 17:59:32
 */

/*
Datr中的多态：
    允许将子类类型的指针赋值给父类类型的指针, 同一个函数调用会有不同的执行效果 。

    子类的实例赋值给父类的引用。
    
    多态就是父类定义一个方法不去实现，让继承他的子类去实现，每个子类有不同的表现。

*/

abstract class Anlmal {
  eat();
}

class Dog extends Anlmal {
  @override
  eat() {
    // TODO: implement eat
    print('小狗在吃骨头，继承了Animal 并且复写eat方法');
  }

  run() {
    print('run');
  }
}

class Cat extends Anlmal {
  @override
  eat() {
    // TODO: implement eat
    print('小猫在吃鱼，继承了Animal 并且复写eat方法');
  }

  foo() {
    print('fn');
  }
}

main() {
  Anlmal d = new Dog();
  d.eat(); // 小狗在吃骨头，继承了Animal 并且复写eat方法

  Anlmal c = new Cat();
  c.eat(); // 小猫在吃鱼，继承了Animal 并且复写eat方法
}
