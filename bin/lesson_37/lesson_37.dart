/*
Created by Axmadjon Isaqov on 09:06:04 03.08.2022
© 2022 @axi_dev 
*/

/*
Mavzu:::Asynchronous programming
*/

import 'dart:async';

import 'logic/auth_repo.dart';
import 'logic/response_model.dart';
import 'logic/user_model.dart';

void main(List<String> args) async {
  ///future microtask
  print("L");
  Future(() => getChar('A'));

  Future.wait([
    getInfo(),
    getInfoOther(),
    Future.microtask(() => getChar("F")),
  ]);

  ///auth
  final auth = AuthRepository();
  User? user = User(email: "example@gmail.com", login: "12345");
  SignUpReponseModel signUpReponseModel = await auth.signUp(user);
  print(signUpReponseModel.code);
  SignInRespnseModel signInRespnseModel = await auth.login(user);
  print(signInRespnseModel.toJson());
  print(signInRespnseModel.code);

  ///presentation
  await waitForMe().then((value) => print('Im more done than you'));
  print('I was waiting here');
  _incrementCounter();

  getString(12)
      .then(
        (value) {
          print("get string");
          print(value);
          return value;
        },
      )
      .onError((error, stackTrace) => error.toString())
      .then((value) => print(value))
      .whenComplete(() => print('getString funksiyasi toliq bajarildi'));
}

Future<int> someFunction() async {
  int? count = 0;
  for (var i = 0; i <= 1000000; i++) {
    count = count! + 1;
  }
  print('done');
  return count!;
}

Future<void> test2() async {
  print('begin');
  await Future.microtask(someFunction);
  print('end');
}

void _incrementCounter() {
  print('above');
  test2();
  print('below');
}

Future waitForMe() async {
  print("Started");
  return Future.delayed(Duration(seconds: 2), () {
    print("Im done");
  });
}

void getChar(String char) {
  print(char);
}

Future<void> getInfo() async {
  await Future.delayed(Duration(seconds: 3));
  print("Dart developer");
}

Future<void> getInfoOther() async {
  await Future.delayed(Duration(seconds: 5));
  print("Flutter developer");
}

Future<int> getMax(List<int> lt) {
  lt.sort();
  return Future<int>.value(lt.last);
}

Future<int> getSumOfEvenNumbers(String? str) async {
  await Future.delayed(Duration(seconds: 5));
  return str!.codeUnits
      .where((number) => number.isEven)
      .reduce((value, number) => number + value);
}

Future<int> getNumber() async {
  await Future.delayed(Duration(seconds: 4), () => print("End future delayed"));
  return 56;
}

Future<String> getString(int? time) async {
  await Future.delayed(
    Duration(seconds: 4),
  );
  if (time! > 10) {
    return throw Exception('You have an exception');
  }
  return "flutter Dev";
}

Future<int> getNumberOfValue() async {
  return 456;
}
