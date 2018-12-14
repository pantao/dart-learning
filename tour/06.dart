void main() {
  // string -> int
  var one = int.parse('1');
  print('one is ${one}');
  assert(one == 2);

  // int -> string
  var oneString = 1.toString();
  assert(oneString == '1');

  var pi = double.parse('3.1415926');
  assert(pi == 3.1415926);

  var piString = 3.1415926.toString();
  assert(piString == '3.1415926');
}
