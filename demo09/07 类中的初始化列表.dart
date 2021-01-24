/* 
   类中的初始化列表
 */
class Rect {
  int height;
  int width;
  Rect()
      : height = 10,
        width = 3 {
    print("${this.height} ---- ${this.width}");
  }

  getArea() {
    return this.height * this.width;
  }
}

void main() {
  Rect r = new Rect();
  print(r.getArea());
  /* 
    10 ---- 3
    30
   */
}
