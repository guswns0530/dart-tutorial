import 'dart:math';

class Point {
  var x;
  var y;
  var count;

  static int counter = 0;

  Point(this.x, this.y) {
    count = ++counter;
  }

  Point.defaultPoint([var this.x = 0, var this.y = 0]) {
    count = ++counter;
  }

  void printStr() {
    print('-----------[$count] $runtimeType-----------');
    print("x: $x, y: $y ");
    print("$runtimeType");
    print(stringify);
    print('-----------------------');
  }

  String get stringify => "($x $y)";
  set increaseX(num value) => x += value;
  set increaseY(num value) => y += value;

  num distanceTo(Point other) {
    var dx = x - other.x;
    var dy = y - other.y;

    return sqrt(dx * dx + dy * dy);
  }
}

class ColorPoint extends Point {
  int red;
  int green;
  int blue;

  ColorPoint([this.red= 0, this.green = 0, this.blue = 0, super.x = 0, super.y = 0]);

  ColorPoint.defaultColorPoint({
    this.red = 0,
    this.green = 0,
    this.blue = 0,
    required x,
    required y
}) : super(x, y);

  ColorPoint operator +(ColorPoint p) => ColorPoint.defaultColorPoint(red: 255, blue: 255, green: 255, x: x + p.x, y: y + p.y);

  @override
  String get stringify => "${super.stringify} with ($red, $blue, $green)";

  @override
  void printStr() {
    print('-----------[$count] $runtimeType-----------');
    print("x: $x, y: $y ");
    print("rgb( $red, $green, $blue )");
    print(stringify);
    print('-----------------------');
  }
}

void main() {
  Point point = Point(1, 2);
  point.printStr();

  point = Point.defaultPoint(5, 2);
  point.printStr();

  point = Point.defaultPoint();
  point.increaseX = 10;
  point.increaseY = 20;
  point.increaseX = 10;
  point.increaseY = 20;
  point.printStr();

  ColorPoint cPoint = ColorPoint(1, 2, 3, 1, 1);
  cPoint.printStr();

  cPoint = ColorPoint.defaultColorPoint(x: 1, y: 1);
  cPoint.printStr();

  (cPoint + ColorPoint.defaultColorPoint(x: 55, y: 55)).printStr();
}

extension NumberParsing_v1 on String {
  int parseInt() {
    return int.parse(this);
  }

  double parseDouble() {
    return double.parse(this);
  }
}
