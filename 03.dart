void main() {
  // 定义一个变量，并初始化他的值
  // 虽然 dart 是强类型语言，但是类型注解并不是必须的， dart 可以推断出类型
  var name = 'Pan Tao';
  print('variable name\'s value is "${name}"');

  // 但是在定义变量，如果添加类型注解，则可以减少编译或者运行时间
  String anotherName = 'Tao Pan';
  print('variable anotherName\'s value is "${anotherName}"');

  // bool 型
  var isRight = false;
  print('isRight? ${isRight}');

  // list 型
  List<int> integerList = [1, 2, 3, 4];
  print('integerList is ${integerList}');
  // 还可以像下面这样打印出一个一个的值
  for (var i = 0; i < integerList.length; i ++) {
    print('index ${i}\'s value is ${integerList[i]}');
  }

  // 字符串列表
  List<String> letters = ['my', 'name', 'is', 'pantao'];
  print('letters is ${letters}');

  // List<Object> 可以看出 Dart 中，一切兼对象，字符串，数字，布尔值，函数都是对象
  List<Object> objects = ['english', 'chinese', true, 10, () => print('func')];
  print('objects is ${objects}');

  Map<String, String> keyValues = {
    'name': 'Pan Tao',
    'birthday': '1988-08-08',
    'address': 'Beijing, People\'s Republic of China'
  };
  print('Map<String, String> keyValues: ${keyValues}');

  // 可以在开发环境中使用 assert 函数，判断某个计算结果是否为 true，它只在 development 环境下会生效
  assert(isRight == true);
}
