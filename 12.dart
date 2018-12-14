// 函数的参数
void main() {
  func1(true, true);
  func2(hidden: true, bold: true);
  func3(true);
  func3(true, true);
  func4(bold: true);
  func4(bold: true, hidden: true);
  func5(true);
  func5(true, true);
  func6();
  func6(gifts: {'name': 'pantao'});
}

// func1 中的两个参数，都是必须填写的
void func1(bool bold, bool hidden) {
  print('位置参数');
  print('bold: ${bold}');
  print('hidden: ${hidden}');
}

void func2({bool bold, bool hidden}) {
  print('命名参数');
  print('bold: ${bold}');
  print('hidden: ${hidden}');
}

void func3(bool bold, [bool hidden]) {
  print('可选位置参数');
  print('bold: ${bold}');
  if (hidden != null) {
    print('hidden: ${hidden}');
  }
}

void func4({bool bold, bool hidden = false}) {
  print('默认值命名参数');
  print('bold: ${bold}');
  print('hidden: ${hidden}');
}

void func5(bool bold, [bool hidden = false]) {
  print('默认值位置参数');
  print('bold: ${bold}');
  print('hidden: ${hidden}');
}

void func6(
    {List<int> list = const [1, 2, 3],
    Map<String, String> gifts = const {
      'first': 'paper',
      'second': 'cotton',
      'third': 'leather'
    }}) {
  print('List 与 Map 也可以在参数中');
  print('list:  $list');
  print('gifts: $gifts');
}