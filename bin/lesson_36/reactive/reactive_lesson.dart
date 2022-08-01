import 'dart:async';

void main(List<String> args) async {
  StreamController controller = StreamController.broadcast(
    onCancel: onCancel,
    onListen: onListen,
    // onPause: onPause,
    // onResume: onResume,
  );

  StreamTransformer transformer = StreamTransformer.fromHandlers(
      handleData: (data, sink) => sink.add(data * 100));

  Stream stream = transformer.bind(controller.stream);
  StreamSubscription subscription = stream.listen((event) {
    print("subscription: $event");
  });
  StreamSink sink = controller.sink;
  sink.add(34);
  sink.add(567);

  for (var i = 0; i <= 10; i++) {
    await Future.delayed(Duration(seconds: 1));
    sink.add(i);
    print(i);
    if (i == 5) {
      subscription.pause();
    }
    if (i == 7) {
      subscription.resume();
    }

    // if (i == 8) {
    //   subscription.cancel();
    // }
  }
  // List<int> lt = await getStreamData(stream);
  sink.add(999);
  // print(lt.length);

  StreamSubscription subs2 = stream.listen((event) {
    print('subs: $event');
  });

  sink.add(678);
}

// Future<List<int>> getStreamData(Stream stream) async {
//   List<int> lt = [];
//   await for (var item in stream) {
//     print("future:: $item");
//     lt.add(item);
//   }
//   return lt;
// }

void onCancel() {
  print("Subscription cancled");
}

void onListen() {
  print("Subcription listening");
}

void onPause() {
  print("Subscription poused");
}

void onResume() {
  print("subscription resumed");
}
