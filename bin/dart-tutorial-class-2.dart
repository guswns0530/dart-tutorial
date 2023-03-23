import 'dart-tutorial-class.dart';

void main() {
  Point point = Point(1, 2);

  point.printStr();

  ColorPointDrawer cpDrawer = ColorPointDrawer(x: 5, y: 20);
  cpDrawer.flagActivated = false;
  cpDrawer.printStr();

  // print(getId(Person("Person")));
  print(getId(Student("Student", 2335013)));
  print(getId(Professor("Professor", "#QA")));

  print('42'.parseInt());
  print('42.123123'.parseDouble());

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

abstract class Person {
  var _name;

  String id();
}

class Student implements Person {
  var _name;

  @override
  String id() => '$_name:$_studentNumber';

  var _studentNumber;
  Student(this._name, this._studentNumber);
}

class Professor implements Person {
  var _name;
  String id() => '$_name:$_professorNumber';

  var _professorNumber;
  Professor(this._name, this._professorNumber);
}

String getId(Person person) => person.id();
