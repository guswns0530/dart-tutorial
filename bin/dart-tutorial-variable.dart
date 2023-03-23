void main() {

  // same dynamic keyword
  Object myInt = 1;
  Object myDouble = 1.0;
  Object myString = 'Dr.Sungwon';
  Object temp;

  temp = myInt;
  myInt = myDouble;
  myDouble = myString;
  myString = temp;

  print(myInt);
  print(myDouble);
  print(myString);

  myInt = 'asdjfhasjdf';
  print(myInt);

  dynamic i = 1;
  dynamic d = 1.0;
  dynamic s = 'hello world';

  i = s;
  print('$i');

  final String firstName = "HyunJun";
  // firstName = "Hongsik" error!! final 상수임
  const String lastName = "Park";
  // lastName = "Lee" error!! const도 상수

  print(firstName);
  print(lastName);
}