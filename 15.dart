// 闭包
void main() {
  // fn = (num n) => 10 + n
  var fn = makeFunction(10);
  // fn = (num n) => 12 + n
  var fn2 = makeFunction(12);
  print(fn(10));
  print(fn2(10));
}
/// makeFunction 是一个箭头函数
/// 它接受一个 num 类型（整形或者浮点型）的参数 number
/// 返回一个新的函数
/// 新的函数接收一个 num 类型的参数 n
/// 并返回 number + n 的值
Function makeFunction (num number) => (num n) => number + n;