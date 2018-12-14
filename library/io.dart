import 'dart:io';

void main() async {
  var file = new File('io.md');
  var contents = await file.readAsString();
  print('the entire file has ${contents.length} characters.');

  var lines = await file.readAsLines();
  print('the entire file has ${lines.length} lines.');
  
  var bytes = await file.readAsBytes();
  print('The entire file has ${bytes.length} bytes.');

  try {
    var notExistFile = new File('notExistFile');
    var content = await notExistFile.readAsString();
    print(content);
  } catch (e) {
    print(e);
  }

  print('still executed write.');

  var writableFile = new File('io_write.md');
  var writableIOSink = writableFile.openWrite();
  for (var line in lines) {
    writableIOSink.write(line);
    writableIOSink.write('\n');
  }
  writableIOSink.close();

  print('still executed walk.');
  var dir = new Directory('../tour');
  try {
    var list = dir.list();
    await for (FileSystemEntity entity in list) {
      if (entity is File) {
        print('Found file: ${entity.path}');
      } else if (entity is Directory) {
        print('Found dir ${entity.path}');
      }
    }
  } catch (e) {
    print(e.toString());
  }

  await walkDirectory('../tour');
}

/// 遍历并打印指定目录下的所有文件与子目录
/// 
/// 给定一个参数 [path]。
void walkDirectory (String path) async {
  var dir = new Directory(path);
  try {
    var list = dir.list();
    await for (FileSystemEntity entity in list) {
      if (entity is File) {
        print('Found file: ${entity.path}');
      } else if (entity is Directory) {
        print('Found dir ${entity.path}');
        await walkDirectory(entity.path);
      }
    }
  } catch (e) {
    print(e.toString());
  }
}