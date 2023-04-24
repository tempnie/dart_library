// uris类 https://dart.cn/guides/libraries/library-tour#uris

void main() {
  encode_decode();
  creaturiObject();
}

void encode_decode() {
  var uri = 'https://example.org/api?foo=some message';
  var encoded = Uri.encodeFull(uri);
  print(encoded);

  var decoded = Uri.decodeFull(encoded);
  print(uri == decoded);

  encoded = Uri.encodeComponent(uri);
  print(encoded);
  decoded = Uri.decodeComponent(encoded);
  print(decoded);
}

void creaturiObject() {
  var uri = Uri.parse('https://example.org:8080/foo/bar#frag');

  assert(uri.scheme == 'https');
  assert(uri.host == 'example.org');
  assert(uri.path == '/foo/bar');
  assert(uri.fragment == 'frag');
  assert(uri.origin == 'https://example.org:8080');

  var uri1 = Uri(
      scheme: 'https',
      host: 'example.org',
      path: '/foo/bar',
      fragment: 'frag',
      queryParameters: {'lang': 'dart'});
  assert(uri1.toString() == 'https://example.org/foo/bar?lang=dart#frag');

  var httpUri = Uri.http('example.org', '/foo/bar', {'lang': 'dart'});
  var httpsUri = Uri.https('example.org', '/foo/bar', {'lang': 'dart'});

  assert(httpUri.toString() == 'http://example.org/foo/bar?lang=dart');
  assert(httpsUri.toString() == 'https://example.org/foo/bar?lang=dart');
}
