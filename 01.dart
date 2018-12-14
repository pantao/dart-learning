// 所有程序的入口，就是一个返回 void 类型的 main() 函数
void main() {
  for (int i = 0; i < 10; i ++) {
    // 在输入字符串时，可以使用 ${VARIABLE} 打印出 VARIABLE 变量的字面值
    // 也可以直接使用 $VARIABLE 的格式
    print('for loop: ${i}');
    print('for loop: $i');
  }
}
