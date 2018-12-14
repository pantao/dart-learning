// 字符串
void main() {
  // 使用单引号创建字符串
  var s1 = '使用单引号创建的一个字符串';
  // 创建双引号创建字符串
  var s2 = "使用双引号创建的一个字符串";
  // 可以很方便的使用 \ 符号进行转义
  var s3 = 'It\'s easy to escape the string delimiter.';
  // 但如果单双引号混用，则更简单，双引号中的单引号或者单引号中的双引号都会被当作普通字符串对待
  var s4 = "It's easy to escape the string delimiter.";
  var s5 = 'The best word is "BEST"';

  print(s1);
  print(s2);
  print(s3);
  print(s4);
  print(s5);

  // 我们还可以定义一个变量，常量等等
  var variable = 127;
  const constant = 128;
  // 然后将变量置于 ${} 表达式中，即可在字符串中快速的引用他们
  print('this variable is ${variable} & the constant is ${constant}');
  // 如果 ${expression} 中的表达式是一个标识符（identifier），那么可以直接省略 {}
  print('this variable is $variable & the constant is $constant');

  // 字符串可以使用 + 号连接
  var part1 = '这是一个字符串的第一段';
  var part2 = '这是字符串的另一段';
  var together = part1 + '，' + part2 + '。';
  print('together is : ${together}');

  // 字符串也是一个对象，可以直接对字符串调用字符串方法
  print(s3.toUpperCase());
  print(s3.toLowerCase());
  print('    这个字符串，原始的是前后都有空格的     '.trim());
  // 也可以访问字符串的属性值
  print('"${s1}" 共有 ${s1.length} 个字符');

  // 如果我们要定义一个很长的字符串，除了使用 + 号外，还可以像下面这样
  // 所有相邻的字符串，会自动的连接在一起
  var longString = '这个是第一部分' "这个是第二部分"
  '这个是第三部分';
  print(longString);

  // 使用 '''内容''' 也可以创建长字符串
  var anotherLongString = '''这个时候，你就可以随意在这由三个单引号开始
并由三个单引号
结束的空间内，写你的长篇小说了。但是，你在此处所做的分行会被带上''';
  print(anotherLongString);

  // 可以在字符串最前面加一个 r 前缀，表示这是一个 raw String
  // 在 raw string 中，\n 等并不会被转义
  var rawString = r'this is \n raw string';
  var normalString = 'this is \n normal string';
  print(rawString);
  print(normalString);

}
