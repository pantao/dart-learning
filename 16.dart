// 测试函数是否相等
void main() {
  var x;

  x = foo;
  // top level function
  print('foo == x? ${x == foo}');

  x = A.bar;
  // static method
  print('A.bar == x? ${A.bar == x}');

  var a = new A(); // A 的 #1 实例
  var b = new A(); // A 的 #2 实例
  var c = b; // A 的 #2 实例
  x = b.baz;

  // x = b.baz = #2.baz
  // 所有 c.baz = x = #2.baz
  print('c.baz == x? ${c.baz == x}');
  
  // #1.baz !== #2.baz
  // 虽然函数值本身是一样的，但是所属于的实例不同，所以，两个方法也不同
  print('a.baz == b.baz? ${a.baz == b.baz}');
}

foo () {} // top level

class A {
  static void bar() {} // 静态方法
  void baz() {} // 实例方法
}