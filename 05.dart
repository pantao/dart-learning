// 本示例可以很好的帮助我理解 final 与 const 这两种不同的不可变值变量的区别
void main(List<String> arguments) {
  // 先让用户输入两个参数
  if (arguments.length < 2) {
    print('请在执行本脚本时，至少提供两个参数');
    return;
  }

  // final 的值，可以在程序运行过程中被初始化，也就是说，我们可以把一个可变量传给 final
  // 变量来创建一个以后不再可变的变量
  final argument1 = arguments[0];
  print('argument1 的值为 ${argument1}');
  // 但是 const 却是编译时即必须知道其值的不可变量，也就是真正意义上的常量
  // 可以看到上面的代码是可以执行的，但是，去掉下面两行的注释再执行，会发现
  // const 是不能在运行过程中初始化值的
  // const argument2 = arguments[1];
  // print('argument2 的值为 ${argument2}');
}