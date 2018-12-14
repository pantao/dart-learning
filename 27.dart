// Minin
void main() {
  var person = new Person();
  person.talk();
  person.canTalk = true;
  person.talk();
}

abstract class Talkable {
  bool canTalk = false;
  void talk () {
    if (canTalk) {
      print('i can talk.');
    } else {
      print("I can't talk.");
    }
  }
}

class Person with Talkable {}