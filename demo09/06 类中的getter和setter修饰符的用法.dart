/* 
   类中的getter和setter修饰符的用法
 */

class Rect {
  int height;
  int width;

  Rect(this.height, this.width);

  getArea() {
    return this.height * this.width;
  }
}

class Rect1 {
  int height;
  int width;

  Rect1(this.height, this.width);

  // 类似vue种的计算属性 computed
  get area {
    return this.height * this.width;
  }

  set areaHeight(value) {
    this.height = value;
  }
}

void main() {
  Rect r = new Rect(10, 2);
  print("面积：${r.getArea()}"); // 面积：20

  Rect1 r1 = new Rect1(20, 2); // 面积:40
  print("面积:${r1.area}"); //注意调用直接通过访问属性的方式访问area

  r1.areaHeight = 200;
  print("面积:${r1.area}"); // 面积:400
}
