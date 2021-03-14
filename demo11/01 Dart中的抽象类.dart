/*
 * @Description: Dart中的抽象类
 * @Version: 0.1
 * @Autor: wangmiao
 * @Date: 2021-03-14 16:20:52
 * @LastEditors: wangmiao
 * @LastEditTime: 2021-03-14 17:26:18
 */

/*
Dart中抽象类: Dart抽象类主要用于定义标准，子类可以继承抽象类，也可以实现抽象类接口。


  1、抽象类通过abstract 关键字来定义

  2、Dart中的抽象方法不能用abstract声明，Dart中没有方法体的方法我们称为抽象方法。

  3、如果子类继承抽象类必须得实现里面的抽象方法

  4、如果把抽象类当做接口实现的话必须得实现抽象类里面定义的所有属性和方法。

  5、抽象类不能被实例化，只有继承它的子类可以

extends抽象类 和 implements的区别：

  1、如果要复用抽象类里面的方法，并且要用抽象方法约束自类的话我们就用extends继承抽象类

  2、如果只是把抽象类当做标准的话我们就用implements实现抽象类



案例：定义一个Animal 类要求它的子类必须包含eat方法

*/

abstract class Animal {
  eat(); // 抽象方法
  run(); // 抽象方法
  printInfo() {
    print('iAmAnOrdinaryMethodInAnAbstractClass\n 我是一个抽象类里面的普通方法');
  }
}

class Dog extends Animal {
  @override
  eat() {
    // TODO: implement eat
    print('小狗在吃骨头，继承了Animal 并且复写eat方法');
  }

  @override
  run() {
    // TODO: implement run
    print('小狗在奔跑，继承了Animal 并且复写run方法');
  }
}

class Cat extends Animal {
  @override
  eat() {
    // TODO: implement eat
    print('小猫在吃鱼,继承了Animal 并且复写eat方法');
  }

  @override
  run() {
    // TODO: implement run
    print('小猫在奔跑,继承了Animal 并且复写run方法');
  }
}

main() {
  Dog d = new Dog();
  d.eat(); // 小狗在吃骨头，继承了Animal 并且复写eat方法
  d.run(); // 小狗在奔跑，继承了Animal 并且复写run方法
  d.printInfo();
  /**
    iAmAnOrdinaryMethodInAnAbstractClass
    我是一个抽象类里面的普通方法
   */
  Cat c = new Cat();
  c.eat(); // 小猫在吃鱼，继承了Animal 并且复写eat方法
  c.run(); // 小猫在奔跑，继承了Animal 并且复写run方法
  c.printInfo();
  /**
    iAmAnOrdinaryMethodInAnAbstractClass
    我是一个抽象类里面的普通方法
   */
}
