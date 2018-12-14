// 隐式接口，属性
void main() {
  var person = Person('Tao', 'Pan', 30);
  print(person);
  print('person.name: ${person.name}');
  print('person.age: ${person.age}');
  print('person._age: ${person._age}');
}

class Person {
  String _firstName;
  String _lastName;
  int _age;

  Person(String firstName, String lastName, int age) {
    this._firstName = firstName;
    this._lastName = lastName;
    this._age = age;
  }

  String get name {
    return '${_firstName} ${_lastName}';
  }

  int get age {
    return _age;
  }
}