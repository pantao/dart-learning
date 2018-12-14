// 类级别变量与函数
void main() {
  print(Color.red.name);
  print(const Color('black'));

  final person = Person.create('pantao');
  print('person name is : ${person.name}');
}

class Color {
  static const red =
      const Color('red');
  final String name;
  const Color(this.name);
}

class Person {
  final String name;
  Person(this.name);

  static create (String name) => new Person(name);
}