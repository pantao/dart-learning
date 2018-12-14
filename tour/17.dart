// 返回值
// 所有的函数都有返回值
void main() {
  // 返回 func1
  print(func1());
  // 返回 null
  print(func2());
  // 如果函数没有定义返回值，那么会把 return null; 默认的当作函数最后一个语句并执行
  // 所有返回值为 null
  print(func3());
}

func1 () => 'func1';
func2 () => null;
func3 () {}