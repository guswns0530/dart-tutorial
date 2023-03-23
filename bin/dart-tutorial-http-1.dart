import 'dart:io';
import 'dart:async';

Future handleGetRequest(HttpRequest request) {
  HttpResponse response = request.response;

  response
    ..write('${DateTime.now()}: Hello World!')
    ..close();

  return Future.value(true);
}

Future handleNotAllowedRequest(HttpRequest request) {
  HttpResponse response = request.response;

  response
    ..statusCode = HttpStatus.methodNotAllowed
    ..write('${DateTime.now()}: Unsupported request: ${request.method}')
    ..close();

  return Future.value(true);
}

Future handleRequest(HttpRequest request) async {
  switch (request.method) {
    case 'GET':
      stdout.writeln("${DateTime.now()}: GET ${request.uri.path}");
      await handleGetRequest(request);
      break;
    default:
      stdout.writeln("${DateTime.now()}: ${request.method} not allowed");
      await handleNotAllowedRequest(request);
  }
}

Future main() async {
  var server = await HttpServer.bind(
      InternetAddress.loopbackIPv4,
      8080
  );
  print('Listening on localhost:${server.port}');

  await for (HttpRequest request in server) {
    print('--------------${request.hashCode}--------------');
    try {
      handleRequest(request);
    } catch(e) {
      stdout.writeln('${DateTime.now()}: Exception in handleRequest: $e');
    }
  }
}