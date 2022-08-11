import 'dart:io';

import 'dart:async';

import 'package:stream_channel/stream_channel.dart';

void main() async {
  StreamController<String> controller = StreamController<String>();
  StreamSubscription subscription = controller.stream.listen((event) {
    print(event);
  });

  StreamChannel channel = StreamChannel(controller.stream, controller.sink);
  for (var i = 0; i <= 100; i++) {
    await Future.delayed(Duration(seconds: 1));
    channel.sink.add("index::$i");
  }
}

Iterable<int> getIterable() sync* {
  for (var i = 0; i <= 10; i++) {
    sleep(Duration(seconds: 1));
    yield i;
  }
}
