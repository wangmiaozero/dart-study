/*
 * @Description: 
 * @Version: 0.1
 * @Autor: wangmiao
 * @Date: 2021-03-16 21:05:41
 * @LastEditors: wangmiao
 * @LastEditTime: 2021-03-16 21:23:43
 */
class Animal {
  String _name; // 私有属性
  int age;
  // 默认构造函数简写
  Animal(this._name, this.age);
  void printInfo() {
    print("${this._name}   ${this.age}");
  }

  String getName() {
    return this._name;
  }

  void _run() {
    print('这是一个私有方法');
  }

  execRun() {
    this._run(); // 类里面的方法互相调用
  }
}
