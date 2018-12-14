// 操作符（操作符被使用时，就创建了表达式）
void main() {
  var number = 10;
  // number++：将 number 的值赋值之后，再+1
  print('number = ${number}, number++ = ${number++}, ${number}');
  // ++number：将 number +1 之后再赋值
  print('number = ${number}, number++ = ${++number}, ${number}');
  
  // number--：将 number 的值赋值之后，再-1
  print('number = ${number}, number-- = ${number--}, ${number}');
  // --number：将 number -1 之后再赋值
  print('number = ${number}, number-- = ${--number}, ${number}');

  // number * 2
  print('number = ${number}, number * 2 = ${number * 2}');

  // number / 2
  print('number = ${number}, number / 2 = ${number / 2}');

  // number / 3
  print('number = ${number}, number / 3 = ${number / 3}');

  // number ~/ 3，返回整数
  print('number = ${number}, number ~/ 3 = ${number ~/ 3}');

  // number % 3，取模
  print('number = ${number}, number % 3 = ${number % 3}');

  // number << 2: 1010 << 2 => 101000 => 40
  print('number = ${number}, number << 2 = ${number << 2}');

  // number >> 2: 1010 >> 2 => 0010 => 2
  print('number = ${number}, number >> 2 = ${number >> 2}');

  // number & 2: 1010 & 0010 => 0010 => 2
  print('number = ${number}, number & 2 = ${number & 2}');

  // number | 2: 1010 | 0010 => 1010 => 10
  print('number = ${number}, number | 2 = ${number | 2}');
  
  // number > 10
  print('number = ${number}, number > 10 = ${number > 10}');
  
  // number < 10
  print('number = ${number}, number < 10 = ${number < 10}');
  
  // number >= 10
  print('number = ${number}, number >= 10 = ${number >= 10}');
  
  // number <= 10
  print('number = ${number}, number <= 10 = ${number <= 10}');
  
  // number != 10
  print('number = ${number}, number != 10 = ${number != 10}');
  
  // number == 10
  print('number = ${number}, number == 10 = ${number == 10}');
  
  // number != 8
  print('number = ${number}, number != 8 = ${number != 8}');

  // number is num
  print('number = ${number}, number is num = ${number is num}');

  // number is int
  print('number = ${number}, number is int = ${number is int}');

  // number is double
  print('number = ${number}, number is double = ${number is double}');

  // number is! double
  print('number = ${number}, number is! double = ${number is! double}');

  // number as num
  print('number = ${number}, number as num = ${number as num}');

  print('true && false = ${true && false}');
  print('true || false = ${true || false}');
  print('true ? 1 : 2 = ${true ? 1 : 2}');
  print('false ? 1 : 2 = ${false ? 1 : 2}');

  // a ??= 10: 如果 a == null，则将 10 赋值给 a，否则不改变 a 的值
  var a;
  a ??= number;
  var b = 1;
  b ??= number;
  print('a = ${a}, b = ${b}');

  // a op= b： a = a op b：a += b == a = a + b
  print('a = ${a} a += b => a += ${b} => a = ${a} + ${b} = ${a + b}');
  a += b;
  print('a = ${a}');

  var person = new Person('pantao');

  // 检测 person 是否为 Person 类实例
  if (person is Person) {
    print('person is : ${person.name}');
  }
  // 将 person 当作 Person 实例去操作
  // 如果 person 并不是 Person 实例，则会抛出异常
  print((person as Person).name);

  // .. 操作符，级联操作符，可以在一个对象上，多次调用不同的方法
  new Person('pantao')
    ..say()
    ..talk()
    ..changeName('Pan Tao')
    ..say()
    ..name = 'Tao Pan'
    ..talk();
  
  var p1 = new Person('pantao');
  var p2;
  // ?. 操作符，就跟 . 操作符一样，只不过 A?.foo 时，如果 A 不是 null，则调用或者返回 A.foo，否则返回 null
  print('p1 is ${p1}, p1?.name is ${p1?.name}');
  print('p2 is ${p2}, p2?.name is ${p2?.name}');

}

class Person {
  Person(String this.name);
  String name;

  say () {
    print('say ${this.name}');
  }

  changeName (String name) {
    this.name = name;
  }

  talk () {
    print('talk ${this.name}');
  }
}
