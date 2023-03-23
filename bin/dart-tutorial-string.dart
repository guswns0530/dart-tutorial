void main() {
  var s1 = 'Single quotes work well for string literals.';
  var s2 = "Double quotes work just as well.";
  var s3 = 'It\'s easy to escape the string delimiter.';
  var s4 = "It's even easier to use the other delimiter.";

  print(" $s1 \n $s2 \n $s3 \n $s4 ");

  s1 = 1.toString();
  s2 = 3.141592.toStringAsFixed(4);

  print("$s1 $s2");

  s1 = "My name is";
  s2 = "HyunJun";
  s3 = s1 + s2;
  s4 = 'My ' 'name' 'is ' 'HyunJun ';
  var s5 = '''
  My name is HyunJun.
  Dart is lovely
  ''';

  print('$s3\n$s4\n$s5');
}