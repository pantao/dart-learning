void main() {
  var a = 0;
  // do {} while () 执行一次之后，再检查
  do {
    print('print ${a}');
    a++;
  } while (a < 0);
  // whilte {} 先检查之后再看要不要执行
  while (a < 0) {
    print('print ${a}');
    a++;
  } 
}