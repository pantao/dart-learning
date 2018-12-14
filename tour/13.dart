// 一等方法对象
void main() {
  // 将方法当作对象，传给 list.forEach 方法
  var list = [1, 2, 3, 4, 5];
  list.forEach(printElement);

  print(say('pantao'));
  print('say: pantao' == say('pantao'));

  // 匿名函数
  list.forEach((element) {
    print('element: ${element}');
  });
}

// 定义一个方法
printElement(element) {
  print(element);
}

say (something) => 'say: ${something}';