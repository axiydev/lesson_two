void main(List<String> args) async {
  getNum().then(
    (value) {
      print('first');
      return value;
    },
  ).then((value) {
    print('second');
    print(value);
    return value;
  }).then((value) {
    print(value);
  });

  getFuture().then((value) => print(value));

  getError().then((value) {}, onError: () {
    print("Error function --------");
  }).catchError(() {
    print("Error funccccc");
  });
}

Future<int> getNum() async => Future<int>.delayed(Duration(seconds: 3), () {
      return 45;
    });

Future<int> getFuture() async {
  return Future<int>.sync(() => 678);
}

Future getError() async {
  return Future.error("Errorr-------");
}
