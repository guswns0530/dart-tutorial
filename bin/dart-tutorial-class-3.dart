import 'dart-tutorial-class.dart';

enum Color { red, green, blue }

void main() {
  Point ? p;
  p?.x = 5;

  print('${p?.x} 실행');

  p = Point(1, 3);
  print('${p.x} 실행');

//   factory
  var logger1 = Logger('UI1');
  var logger2 = Logger('UI2');
  var logger3 = Logger('UI3');

  logger1.log('[05]\$ [object:${logger1.hashCode}] Button clicked');
  logger2.log('[06]\$ [object:${logger2.hashCode}] Button clicked');
  logger3.log('[07]\$ [object:${logger3.hashCode}] Button clicked');

  print(Logger.cacheLength);
  print(Logger._cache);

  var aColor = Color.blue;
  switch (aColor) {
    case Color.red:
      print('[08]\$ Red as roses!');
      break;
    case Color.green:
      print('[08]\$ Green as grass!');
      break;
    default: // Without this, you see a WARNING.
      print('[08]\$ ${aColor}'); // 'Color.blue'
  }
}

class InitCon {
  int x;
  int y;
  InitCon([this.x = 0, this.y = 0]);
}

class Logger {
  final String name;
  bool mute = false;
  static final Map<String, Logger> _cache = {};

  factory Logger(String name) {
    return _cache.putIfAbsent(name, () => Logger._internal(name));
  }

  Logger._internal(this.name);

  void log(String msg) {
    if(!mute) print(msg);
  }

  static get cacheLength => _cache.length;
}