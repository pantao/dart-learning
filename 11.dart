// Functions 函数，方法
void main() {
  var me = 'Pan Tao';
  var him = 'Aha Insight';
  var map = {};
  print('${me} isMe: ${isMe(me)}');
  print('${him} isMe: ${isMe(him)}');
  print('${me} isMe2: ${isMe2(me)}');
  print('${him} isMe2: ${isMe2(him)}');
  print('${map} isMe2: ${isMe2(map)}');
  print('${me} isMeArrow: ${isMeArrow(me)}');
  print('${him} isMeArrow: ${isMeArrow(him)}');
}

// 函数也是一种类型：Function
bool isMe (String name) {
  return 'Pan Tao' == name;
}

// 或者也可以不使用类型定义
isMe2 (name) {
  return 'Pan Tao' == name;
}

// 如果一个函数简单到只有一个表达式（不能有语句，比如 if else），你可以使用箭头函数，他很简单
// 此时，不需要使用 return，默认直接返回表达式的值
bool isMeArrow (String name) => 'Pan Tao' == name;