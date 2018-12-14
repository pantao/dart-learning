# IO 测试

I/O 库可以让命令行应用读写文件和查看目录。 读取文件有两种方式：一次读完或者通过流的方式来读取。 一次读完需要把文件内容读到内存中，如果文件 非常大或者你希望一边读文件一边处理，则应该 使用 Stream， 在 流式读取文件中介绍。

## Reading a file as text

对于编码为 `UTF-8` 的文本，可以使用函数 `readAsString()` 一次性 的读取整个文本。如果单行文字比较重要，则可以 使用 `readAsLines()` 来读取。 这两个函数返回一个 `Future` 对象，当文件 读取完的时候，可以从 `Future` 对象获取一个或者多个字符串。

```dart
import 'dart:io';

main() async {
  var config = new File('config.txt');
  var contents;

  // Put the whole file in a single string.
  contents = await config.readAsString();
  print('The entire file is ${contents.length} characters long.');

  // Put each line of the file into its own string.
  contents = await config.readAsLines();
  print('The entire file is ${contents.length} lines long.');
}
```
