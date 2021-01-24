void main() {
  List list = ['11', '22', '33'];
  list.forEach((element) {
    print(element);
  });

  List list1 = ['王嘉怡', '我爱你'];
  list1.forEach((element) => {print(element)});
  List arr = [1, 2, 3, 4, 5, 6, 7];
  var newList = arr.map((e) {
    if (e > 2) {
      return e * 2;
    }
    return e;
  });
  print(newList);

  /*
需求：    1、定义一个方法isEvenNumber来判断一个数是否是偶数  
         2、定义一个方法打印1-n以内的所有偶数
*/

//定义一个方法isEvenNumber来判断一个数是否是偶数
  bool isEvenNumber(int n) {
    if (n % 2 == 0) {
      return true;
    }
    return false;
  }

  printNum(int n) {
    for (var i = 1; i <= n; i++) {
      if (isEvenNumber(i)) {
        print(i);
      }
    }
  }

  printNum(10);
}
