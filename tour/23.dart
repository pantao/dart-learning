// 重写操作符，这个还是挺NB的
void main() {
  var v1 = new Vector(4, 3);
  var v2 = new Vector(2, 2);

  print('v1: ${v1}');
  print('v2: ${v2}');
  print('v1 + v2 = ${v1 + v2}');
  print('v1 - v2 = ${v1 - v2}');
  print('v1 * 3 = ${v1 * 3}');
  print('v1 * v2 = ${v1 * v2}');
}

class Vector {
  final int x;
  final int y;
  const Vector(this.x, this.y);

  /// Overrides + (a + b)
  Vector operator +(Vector v) {
    return new Vector(x + v.x, y + v.y);
  }

  Vector operator -(Vector v) {
    return new Vector(x - v.x, y - v.y);
  }

  // 这个NB
  operator *(Object object) {
    if (object is int) {
      return new Vector(x * object, y * object);
    }
    if (object is Vector) {
      return new Vector(x * object.x, y * object.y);
    }
  }

  @override
    String toString() {
      return 'Vector{x: ${x}, y: ${y}}';
    }
}