import 'dart:io';

void main() async {
  final requests = await HttpServer.bind('localhost', 8888);
  await for (final request in requests) {
    processRequest(request);
  }
}

void processRequest(HttpRequest request) {
  print('Got request for ${request.uri.path}');
  final response = request.response;
  if (request.uri.path == '/dart') {
    response
      ..headers.contentType = ContentType(
        'text',
        'plain',
      )
      ..write('Hello from the server')
      ..close(); // 关闭响应
  } else {
    response.statusCode = HttpStatus.notFound;
    response.close(); // 关闭响应
  }
}
