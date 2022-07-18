/*
Created by Axmadjon Isaqov on 17:33:20 30.06.2022
© 2022 
*/

import 'package:my_library_dart/my_library_dart.dart';

import 'profession.dart';

///[@axi_dev]
//functions
//typedef VoidCallback = void Function();
void main() {
// Assign a function to a variable
  bool Function(int) checker = checkEven;

  MyProfession? profession = MyProfession();

  final awesome = Awesome();
  print(awesome.add(12, 67));

  var lt = ['Tom', 'JERRY', 'Arnold'];
  lt.sort((a, b) {
    print(a);
    return a.length.compareTo(b.length);
  });
  print(lt);
}

// String Function(String) printName = (String n) => n.toUpperCase();
// String Function(String) printName1 = (final n) => n.toUpperCase();
// String Function(String) printName2 = (var n) => n.toUpperCase();
// String Function(String) printName3 = (n) => n.toUpperCase();

bool checkEven(int value) {
  return value % 2 == 0;
}

// Arrow syntax
bool checkEven1(int value) => value % 2 == 0;

bool checkEven2(int value) => someOtherFunction(value);

someOtherFunction([int? value]) {}




// (parameter_list) {  
//    statement(s)  
// } 