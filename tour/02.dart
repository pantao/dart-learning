// main() 函数可以接入 List<String> 泛型的参数列表，比如本程序可以像下面这样的执行
// # dart 02.dart 98
void main (List<String> arguments) {
  // 如果 arguments.isEmpty 不为 false，表示执行本程序时，带了参数
  if (!arguments.isEmpty) {
    // 可以使用 int.parse() 转换字符串为 int 类型数字
    var number = int.parse(arguments[0]);
    // 调用定义的 printInteger 打印出 number 的值
    printInteger(number);
  }
  else {
    printInteger(0);
  }
}

// 定义一个函数，接受一个 int 型的数字，并打印出来
printInteger (int number) {
  print('the number is : ${number}');
}
