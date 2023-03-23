int calcFraction1(var denominator, var nominator) {
  return denominator ~/ nominator;
}

int calcFraction2(var denominator, [var nominator]) {
  nominator ??= 1;
  return denominator ~/ nominator;
}

int calcFraction3(var denominator, [var nominator = 1]) {
  return denominator ~/ nominator;
}

int calcFraction4({var denominator, var nominator }) {
  return denominator ~/ nominator;
}

int calcFraction5({var denominator, var nominator }) {
  nominator ??= 1;
  return denominator ~/ nominator;
}

int calcFraction6({var denominator, var nominator = 1 }) {
  return denominator ~/ nominator;
}

void main() {
  print(calcFraction1(1, 1));
  print(calcFraction2(2));
  print(calcFraction3(3));

  print(calcFraction4(denominator: 4, nominator: 1));
  print(calcFraction4(nominator: 1, denominator: 4));
  print(calcFraction5(denominator: 5));
  print(calcFraction6(denominator: 6));

  print(calcSum(1, 2));
}

int calcSum(int num1, int num2) {
  return num1 + num2;
}