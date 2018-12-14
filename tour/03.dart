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

  // 可以在开发环境中使用 assert 函数，判断某个计算结果是否为 true，它只在 development 环境下会生效
  assert(isRight == true);

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

  // 可以这样创建一个 map
  Map<String, String> keyValues = {
    'name': 'Pan Tao',
    'birthday': '1988-08-08',
    'address': 'Beijing, People\'s Republic of China'
  };
  // 或者可以这样
  var keyValues2 = {
    'name': 'Pan Tao',
    'birthday': '1988-08-08',
    'address': 'Beijing, People\'s Republic of China'
  };
  // 或者也可以这样
  var keyValues3 = Map();
  keyValues3['name'] = 'Pan Tao';
  keyValues3['birthdary'] = '1988-08-08';
  keyValues3['address'] = 'Beijing, People\'s Republic of China';
  print('Map<String, String> keyValues: ${keyValues}');
  print('Map<String, String> keyValues: ${keyValues2}');
  print('Map<String, String> keyValues: ${keyValues3}');
  print('keyValues 是否与 keyValues2 相等？${keyValues == keyValues2}');
  print('keyValues2 是否与 keyValues3 相等？${keyValues2 == keyValues3}');
  print('keyValues 是否与 keyValues3 相等？${keyValues == keyValues3}');

  // 可以使用 const 创建一个不可变的 map
  final constMap = const {
    'name': 'Pan Tao'
  };
  print('constMap : ${constMap}');
  // const map 是不能进行任何修改的
  // constMap['name'] = 'Tao Pan';
  // print('constMap : ${constMap}');
}
