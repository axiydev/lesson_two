/*
Created by Axmadjon Isaqov on 09:01:22 06.06.2022
© 2022 
*/
import 'dart:math';

///[@axi_dev]
///Runes
void main(List<String> args) {
  String? myVarriable = "Flutter freamwork by Google";

  var myVariableCodeUnitsList = myVarriable.codeUnits;

  print(myVariableCodeUnitsList);
  print(myVarriable.codeUnitAt(0));
  print(myVarriable.codeUnits[0]);

  String? myNewString = String.fromCharCodes(myVariableCodeUnitsList);
  print(myNewString);

  var myNewList = [...myVariableCodeUnitsList];

  for (var i = 0; i < myNewList.length; i++) {
    var counter = 0;
    for (var j = 0; j < myNewList.length; j++) {
      if (myNewList[i] == myNewList[j]) {
        counter++;
      }
    }

    if (counter > 1) {
      myNewList.removeAt(i);
      i--;
    }
  }
  print(myNewList);
  // int i = 0;
  // while (i != myNewList.length) {
  //   var counter = 0;
  //   for (var item in myNewList) {
  //     if (myNewList[i] == item) counter++;
  //   }
  //   if (counter > 1) {
  //     myNewList.remove(myNewList[i]);
  //     i--;
  //   }
  //   i++;
  // }
  // print(myNewList);

  var n = myNewList.length;
  //bubble sort
  for (var i = 0; i < n; i++) {
    for (var j = 0; j < n - 1 - i; j++) {
      if (myNewList[j] > myNewList[j + 1]) {
        var item = myNewList[j + 1];
        myNewList[j + 1] = myNewList[j];
        myNewList[j] = item;
      }
    }
  }
  print('sorted list -- > $myNewList');
  // for (var i = 0; i < n - 1; i++) {
  //   print(myNewList[i + 1]);
  // }

  var myString = String.fromCharCodes(myNewList);
  print(myString);

  print(String.fromCharCode(97));

  Runes myRunes = myVarriable.runes;
  print(myRunes);
  var result = myRunes.string;
  print(result);
  myRunes.toList().removeWhere((element) => true);
  print(String.fromCharCodes(myRunes));

  String empty = '';
  for (var item in myRunes) {
    String character = String.fromCharCode(item);
    print('character = $character ------- codeUnit = $item');
    empty += character;
  }
  print(empty);
  String emoji = '\u{1f600}';
  print(emoji);
  String? mystr = "2020 PDP Online ☺️☺️😉😋 ";
  Runes myStrRunes = mystr.runes;
  var emtyStr = '';
  for (var item in myStrRunes) {
    if ((item >= 97 && item <= 122) ||
        (item >= 60 && item <= 90) ||
        item == 32) {
      emtyStr += String.fromCharCode(item);
    }
  }

  print(emtyStr.trim());

  print('*' * 100);
  //fibonacci numbers
  int f1 = 1, f2 = 1, f3 = 2;

  for (var i = 0; i <= 10; i++) {
    f3 = f1 + f2;
    f1 = f2;
    print(f3);
    f2 = f3;
  }

  //for23
  var m = 10, x = 2;
  double summ = 0;
  for (var i = 0; i <= m; i++) {
    var surat = pow(-1, i) * (pow(x, 2 * i + 1));
    var factarial = 1;
    for (var j = 1; j <= (2 * i + 1); j++) {
      factarial *= j;
    }
    summ += surat / factarial;
  }

  print(summ);

  bool isSdk = true;
  var myList = [
    'Flutter',
    'dart',
    if (isSdk) [12, 34, 57]
  ];
  print(myList);

  var myNumberLt = [for (var i = 10; i < 100; i++) i];
  var mNumberLt2 = List<int>.generate(90, (index) => index + 10);

  print(myNumberLt);
  print(mNumberLt2);
}
