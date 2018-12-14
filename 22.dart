import 'dart:convert';
void main() {
  var object = jsonDecode('{"x": 1, "y": 2}');
  print('Object: ${object}');
  print('object is Map? ${object is Map}');
}