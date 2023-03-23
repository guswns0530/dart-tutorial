import 'dart-tutorial-class.dart';

void main() {
  Point point = Point(1, 2);

  point.printStr();

  ColorPointDrawer cpDrawer = ColorPointDrawer(x: 5, y: 20);
  cpDrawer.flagActivated = false;
  cpDrawer.printStr();
}

class ColorPointDrawer extends ColorPoint with ActivationFlag {

  ColorPointDrawer({var red = 0, var green = 0, var blue = 0, required var x, required var y}) : super(red, green, blue, x, y);

  @override
  String get stringify => (flagActivated == true) ? "${super.stringify} is activated" : "null";
}

mixin ActivationFlag {
  bool flag = true;

  bool get flagActivated => flag;
  set flagActivated(flag) => this.flag = flag;

}