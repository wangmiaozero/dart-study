/*
 * @Description: Dart中implements实现多个接口
 * @Version: 0.1
 * @Autor: wangmiao
 * @Date: 2021-03-14 21:19:33
 * @LastEditors: wangmiao
 * @LastEditTime: 2021-03-14 21:27:00
 */
abstract class A {
  late String name;
  printA();
}

abstract class B {
  late String name;
  printB();
}

class C implements A, B {
  @override
  late String name;

  @override
  printA() {
    // TODO: implement printA
    print('printA');
  }

  @override
  printB() {
    // TODO: implement printB
    return null;
  }
}

void main() {
  C c = new C();
  c.printA(); // printA
  c.printB();
}
