// 下面这个在 JavaScript 里面的坑在 Dart 中没有
void main() {
  List<Function> callbacks = [];
  for (var i = 0; i < 10; i++) {
    callbacks.add(() => print(i));
  }
  callbacks.forEach((f) => f());
}