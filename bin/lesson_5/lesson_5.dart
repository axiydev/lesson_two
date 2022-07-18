/*
Created by Axmadjon Isaqov on 09:10:24 25.05.2022
© 2022 
*/
///https://t.me/dart_code
//shart operatorlari

void main(List<String> args) {
  int? oz = 18;
  if (oz == null) {
    print("$oz");
    print("*" * 10);
  } else if (oz % 2 == 0) {
    print("$oz is even");
    if ((oz is num) && 10 <= oz && oz <= 27) {
      print("$oz type is num and between 10 and 27");
    } else {
      print("$oz type is not num and not between 10 and 27");
    }
  } else if (oz % 2 != 0) {
    print("$oz is odd");
  } else {
    print("$oz is not number");
  }

  var qoldiq = oz % 2;

  switch (qoldiq) {
    case 0:
      print("qoldiq is 0");
      break;
    case 1:
      print("qoldiq is 1");
      break;
    default:
      print("$qoldiq is default");
  }

  var number = 42;
  var qoldiq1 = number % 20;

  qoldiq1 == 1 || qoldiq1 == 2 ? print(true) : print(false);
  if (qoldiq1 > 0 && qoldiq1 <= 2) {
    print(true);
  } else {
    print(false);
  }

  var number1 = 97;
  var numberQoldiq = number1 % 10;
  if ((numberQoldiq >= 0 && numberQoldiq <= 2) || (numberQoldiq >= 8)) {
    print(true);
  } else {
    print(false);
  }

  // var x = 11;

  // List<int>? boluvchilar = [];
  // for (var i = 1; i <= 20; i++) {
  //   if (20 % i == 0) {
  //     boluvchilar.add(i);
  //   }
  // }
  // print(boluvchilar);
  // for (var i in boluvchilar) {
  //   var qoldiqX = x % i;
  //   if (qoldiqX == 1) {
  //     print("$x 20 ning kopaytmasidan 1 ortiq");
  //   } else if (qoldiqX == 2) {
  //     print("$x 20 ning kopaytmasidan 2 ortiq");
  //   }
  // }

  var numberExample = 123;
  var qolqiqNumbe = numberExample % 10;
  var butunQism = (numberExample ~/ 10) % 10;
  var result = (numberExample ~/ 100) * 100 + qolqiqNumbe * 10 + butunQism;
  print(result);

  ///loops

  for (var i = 1; i <= 100; i++) {
    print("Salom");
  }

  var increment = 0;
  while (increment != 100) {
    increment++;
    print(increment);
  }

  var incrementDoWhile = 0;
  do {
    incrementDoWhile++;
    print(incrementDoWhile);
  } while (incrementDoWhile != 100);

  for (var j = 10; j > 0; j--) {
    print(j);
  }

  var numBerWhile = 10;
  while (numBerWhile > 0 && numBerWhile >= 7) {
    print(numBerWhile);
    numBerWhile--;
  }

  var ismCharList = ['A', 'r', 'n', 'o', 'l', 'd'];
  for (var item in ismCharList) {
    print(item);
  }

  Iterator iteratorValue = ismCharList.iterator;
  while (iteratorValue.moveNext()) {
    print(iteratorValue.current);
  }
}
