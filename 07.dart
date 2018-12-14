// int 类型数字可以进行 shift(<<, >>)，AND(&) 以及 OR(|) 操作
void main() {
  // 0011 << 1 = 0110 = 6
  var leftShifted = 3 << 1;
  print('3 << 1 is ${leftShifted}');

  // 0011 >> 1 = 0001 = 1
  var rightShifted = 3 >> 1;
  print('3 >> 1 is ${rightShifted}');

  // 0100 & 0011 = 0000 = 0
  var anded = 3 & 4;
  print('3 & 4 is ${anded}');

  // 0100 | 0011 = 0111 = 7
  var ored = 3 | 4;
  print('3 | 4 is ${ored}');
}
