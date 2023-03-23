void main () {
  dynamic num1 = 9;
  dynamic num2 = 4;

  calculator(num1, num2);

  num1 = 9.0;
  num2 = 4.0;
  calculator(num1, num2);
  
  num2 = 4;
  calculator(num1, num2);
}

void calculator(num1, num2) {
  print('num1: ${num1.runtimeType}, num2:${num2.runtimeType}');
  print(num1 + num2);
  print(num1 - num2);
  print(num1 * num2);
  print(num1 / num2);
  print(num1 ~/ num2);
  print(num1 % num2);
}