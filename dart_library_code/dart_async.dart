//https://dart.cn/guides/libraries/library-tour#dartasync---asynchronous-programming
import 'dart:async';

Future<String> findEntryPoint() async {
  await Future.delayed(Duration(seconds: 1));
  return 'entry_point.dart';
}

Future<int> runExecutable(String entryPoint, List<String> args) async {
  await Future.delayed(Duration(seconds: 2));
  print('Running $entryPoint with args: $args');
  return 0;
}

Future<void> flushThenExit(int exitCode) async {
  await Future.delayed(Duration(seconds: 1));
  print('Flushing and exiting with code: $exitCode');
}

void runUsingAsyncAwait() async {
  var entryPoint = await findEntryPoint();
  var exitCode = await runExecutable(entryPoint, ['arg1', 'arg2']);
  await flushThenExit(exitCode);
}

void runUsingFuture() {
  findEntryPoint().then((entryPoint) {
    return runExecutable(entryPoint, ['arg1', 'arg2']);
  }).then(flushThenExit).catchError((e) {
    print('Error occurred: $e');
  });
}

void main() {
  runUsingAsyncAwait();
  runUsingFuture();
}




