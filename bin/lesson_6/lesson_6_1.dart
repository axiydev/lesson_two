import 'dart:math' show sqrt;

void main(List<String> args) {
  List listButun = [
    45,
    67,
    89,
    23,
    2456,
    678,
    23423,
  ];
  print("butun sonlar listi -> $listButun");

  for (var item in listButun) {
    print(item);
  }

  String? ism = 'Axmadjon Isaqov';
  String belgi = '';
  int maxCount = 0;

  for (var i = 0; i < ism.length; i++) {
    var counter = 0;
    for (var j = 0; j < ism.length; j++) {
      if (ism[i] == ism[j]) {
        counter++;
      }
    }
    if (maxCount <= counter) {
      maxCount = counter;
      belgi = ism[i];
    }
  }
  print("eng kop takrorlangan belgi $belgi maxCount=$maxCount");

  int increment = 5;
  while (increment != 0) {
    increment != 3 ? print(increment) : print(increment * 100);
    increment--;
  }
  print('*' * 100);
  var tubSon = 37;

  for (var i = 2; i <= tubSon; i++) {
    bool isTub = true;
    for (var j = 2; j <= sqrt(i); j++) {
      if (i % j == 0) {
        isTub = false;
        break;
      }
    }
    if (isTub) {
      print(i);
    }
  }

  print("@" * 100);
  var l = 0;
  do {
    l += 11;
    print(l);
  } while (l != 55);
  printLine('^');
  //continue
  for (var i = 20; i <= 100; i++) {
    if (i % 11 == 0) {
      continue;
    }
    print(i);
  }
  printLine(r"$");

  outer:
  for (var i = 1; i < 100; i++) {
    if (i % 5 == 0) {
      break outer;
    }
    print(i);
  }

  outerLabel:
  for (var i = 0; i < 5; i++) {
    innerLabel:
    for (var j = 0; j < 20; j++) {
      if (j == 19) {
        break innerLabel;
      }
      if (i == 3) {
        break outerLabel;
      }
      print("( i , j )-->( $i , $j )");
    }
  }

  f1:
  for (var i = 0; i < 5; i++) {
    f2:
    for (var j = 0; j < 5; j++) {
      f3:
      for (var k = 0; k < 5; k++) {
        print("$i:$j:$k");
        if (k == 3) break f2;
      }
    }
  }
}

void printLine(String belgi) => print(belgi * 100);
