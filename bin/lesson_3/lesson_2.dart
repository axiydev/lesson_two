/*
Created by Axmadjon Isaqov on 09:03:07 20.05.2022
© 2022 
*/
import 'dart:math';
import 'dart:collection';

///https://t.me/dart_code
//data types
void main(List<String> args) {
  var name = "Ahmadxon";
  print(name);
  name = "Axmadjon";
  print(name);
  sqrt(5);

  //num int double
  num? son1 = 56;
  print(son1.runtimeType);
  son1 = 56.1;
  print(son1.runtimeType);
  // var String = "salom";
  // String hello = "ok";   bu xato

  var result;

  print(result.runtimeType);

  dynamic smartPhone = "iPhone";

  print("qiymati-->$smartPhone\ntipi-->${smartPhone.runtimeType}");
  smartPhone = 789;
  print("qiymati-->$smartPhone\ntipi-->${smartPhone.runtimeType}");

  print(pi);
  const ism = "Axmadjon";

  final numberPi = 3.14;
  const number = 56.1;
  const ozgarmasNumber = number * pi;
  final ozgarmasNumberFinal = son1 * number;

  Object res = 45;
  Object hello = "this is string";
  List lt = [56, 'Salom'];
  Map mp = {"first": 390};
  Set st = {
    34,
    34,
    4,
    1,
  };
  print(st);
  Runes rune = name.runes;
  print(rune);
  Iterator iterable = lt.iterator;
  HashSet? resultHashSet = HashSet.from(st);

  String? data = '''Flutter 
  G2
  Dart 2.6 introduced
  a new extension, 
  dart2native, 
  which extends native compilation to the 
  Linux, macOS, and Windows desktop platforms. 
  Earlier developers could create new tools
  using only Android or iOS devices. With 
  this extension it also becomes possible to 
  compose a program into self-contained executables. 
  According to company representatives, it’s no 
  longer necessary to have the Dart SDK installed,
  ''';
  var uz = "O'zbe\"kiston";
  print(data);

  StringBuffer? stringBufferData = StringBuffer(data);
  // stringBufferData.write(data);
  print(stringBufferData);
}
