void main() {
  var wf = new WannableFunction();
  print(wf('a', 'b', 'c'));
}

class WannableFunction {
  call(String a, String b, String c) => '$a $b $c';
}
