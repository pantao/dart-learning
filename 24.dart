// 抽象类 Abstract classes
void main() {
  var c1 = new SpecializeContainer();
  var c2 = new AnotherContainer();

  c1.updateChildren();
  c2.updateChildren();
}

abstract class AbstractContainer {
  void updateChildren();
}

class SpecializeContainer extends AbstractContainer {
  void updateChildren() {
    print('update specialize container');
  }
}

class AnotherContainer extends AbstractContainer {
  void updateChildren() {
    print('update another container');
  }
}