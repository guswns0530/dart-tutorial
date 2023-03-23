import 'package:dart_tutorial/dart_tutorial.dart' as dart_tutorial;

void main() {
  // 첫시작 모듈 불러오기 및 호출, 출력
  print('Hello world: ${dart_tutorial.calculate()}!');

  // 변수 선언
  int i = 1;
  double d = 1.0;
  bool b = true;

  print(i);
  print(d);
  print(b);

  // Type Inference ( 타입 추론 )
  // Generic i = integer
  var iVar = 1;
  var dVar = 2.0;
  var bVar = true;

  print(iVar);
  print(dVar);
  print(bVar);

  /* 에러 원인은 한번 정해진 type은 변경이 안됨
  iVar = 2.0;
  dVar = false;
  bVar = 0;
   */

  var list = [1, 2, 3];
  var set = {'C', 'C++'};
  var map = {1: 'apple', 'banana': '2'};

  print(list);
  print(set);
  print(map);

  switch (i) {
    case 0:
      print("hello world 1");
      break;
    case 1:
      print("hello world 2");
      break;
    case 2:
      print("hello world 3");
  }

  for (int num in list) {
    print(num);
  }

  var printNum = ((i) => print('숫자를 출력합니다 ${i}'));

  printNum(1);
  printNum(999);

  print(countList(list));

  var craft1 = Spacecraft('배고파', DateTime.now());
  craft1.describe();

  var craft2 = Spacecraft.unlaunched('졸려요');
  craft2.describe();

  var craft3 = Orbiter('안녕', DateTime.now(), 1);
  craft3.describe();

  var craft4 = new PilotedCraft('안녕2', DateTime.now(), 1);
  craft4.describe();
  print(craft4.altitude);

  printWithDelay('안녕하세요', 10, () => print("실행이 끝났습니다."));
}

int countList(list) {
  return list.length;
}

class Spacecraft {
  String name;
  DateTime? launchDate;

  Spacecraft(this.name, this.launchDate) {}

  Spacecraft.unlaunched(String name) : this(name, null);

  int? get launchYear => launchDate?.year;

  void describe() {
    print('Spacecraft: $name');
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate!).inDays ~/ 365;
      print('Launched: $launchYear ($years years ago)');
    } else {
      print('Unlaunched');
    }
  }
}

class Orbiter extends Spacecraft {
  num altitude;

  Orbiter(String name, DateTime launchDate, this.altitude)
      : super(name, launchDate);
// Orbiter(super.name, super.launchDate);
}

class Piloted {
  int astronauts = 1;

  void describeCrew() {
    print('Number of astronatus: $astronauts');
  }
}

class PilotedCraft extends Spacecraft with Piloted {
  num altitude;

  PilotedCraft(String name, DateTime launchDate, this.altitude)
      : super(name, launchDate);
}

Future printWithDelay(String message, seconds,  Function callback) async {
  await Future.delayed(Duration(seconds: seconds));
  print(message);

  callback();
}
