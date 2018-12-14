void main () {
  // 可以使用 final 定义一个永远不再改变的值的变量
  final name = 'Pan Tao';
  print('final name is : ${name}');
  // 尝试去修改 name 的值，会抛出一个异常
  // name = 'Tao Pan';
}