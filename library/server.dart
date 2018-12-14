import 'dart:io';

void main() async {
  start();
}

void start ([String address = '127.0.0.1', int port = 8888]) async {
  handler (HttpRequest request) {
    request.response.headers.contentType =
        new ContentType('text', 'plain');
    request.response.write('Dart is optionally typed');
    request.response.close();
  }

  var requests = await HttpServer.bind(address, port);
  await for (var request in requests) {
    print('Got request for ${request.uri.path}');
    if (request.uri.path == '/languages/dart') {
      handler(request);
    } else {
      request.response.write('Not found');
      request.response.close();
    }
  }
}