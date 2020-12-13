main() {
  int sumNum(n) {
    var sum = 0;
    for (var i = 0; i <= n; i++) {
      sum += i;
    }
    return sum;
  }

  var fn = sumNum(100);
  print(fn);
  // age 可选参数
  printUserInfo(String username, [int age]) {
    if (age != null) {
      return "姓名: $username ---年龄: $age";
    }
    return "姓名: $username";
  }

  printUserInfo('张三', 18);
}
