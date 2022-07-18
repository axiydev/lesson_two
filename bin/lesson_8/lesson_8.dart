/*
Created by Axmadjon Isaqov on 08:51:39 01.06.2022
© 2022 
*/

///[@axi_dev]
void main(List<String> args) {
  //Lists and Maps

  List<int?> list =
      List.empty(growable: true); //ekvivalent  List<int?>? list = [];
  list.add(23);
  list.add(37);
  for (var i = 0; i <= 10; i++) {
    list += [i]; //ekvivalent list.add(i);
  }
  print(list);
  logLine('*');
  var listOne = <int?>[12, 45, 78, 80];
  var listTwo = <int?>[799, 54, 576];
  var thirdList = listOne + listTwo;

  var listResult = <int>[];
  print(thirdList);
  logLine('*');
  for (var i = 1; i < 100; i++) {
    var counter = 0;
    for (var j = 1; j <= i; j++) {
      if (i % j == 0) {
        counter++;
      }
    }
    if (counter == 2) {
      listResult.add(i);
    }
  }
  print(listResult);
  logLine('*');
  //reversed methodi listni teskarisiga qaytadaradi
  listResult = listResult.reversed.toList();
  print(listResult);
  logLine('*');
  // var ltEmpty = <int?>[];  bu xato
  // print(ltEmpty.first);
  Iterable arrayIterable = listResult.reversed;
  print(arrayIterable);
  logLine('*');
  print([44].single);
  List<int> lt = [];
  for (var i = 1; i < 50; i += 1) {
    lt.add(i);
  }
  logLine('*');
  print(lt);
  lt.remove(11);
  print(lt);
  print(lt.length);
  var lenth = lt.length;
  List<int> lt1 = List.from(lt);
  // for (var i = 0; i < lt1.length; i++) {
  //   if (lt1[i] > 20 && lt1[i] < 50) {
  //     lt.remove(lt1[i]);
  //   }
  // }
  logLine('*');
  print(lt);
  logLine('*');
  lt1.removeWhere((element) {
    return element.isEven;
  });
  print(lt1);
  logLine('*');
  // for (var item in lt1) {
  //   print(item);
  // }

  print(lt1);
  logLine('*');
  lt1.removeAt(5); //lt1 dan 5 indexdagi elementi ochiradi
  print(lt1);
  logLine('*');
  lt1.removeRange(5, 15); //indexlar oraligini ochiradi
  print(lt1);
  logLine('*');
  lt1.addAll([100, 200, 300]);
  lt1 = lt1 + [111, 222, 333];
  print(lt1);
  logLine('&');
  if (lt1.contains(111)) {
    print('listda 111 mavjud');
  }

  String? str =
      "Flutter freamwork of Dart programming and i am developing in dart";
  var strList = str.split(' ');
  for (var item in strList) {
    if (item.endsWith('ing')) {
      print(item);
    }
  }

  int? data = lt1.elementAt(6);
  print(data);

  int? index = lt1.lastIndexOf(377);
  print(index);

  // lt1.

  lt1.insert(6, 90);
  print(lt1);
  lt1.insertAll(6, [999, 888, 777]);
  print(lt1);

  lt1 = lt1.where((element) {
    return element % 111 == 0;
  }).toList();
  print(lt1);

  for (var i = 0; i < lt1.length; i++) {
    lt1[i] = lt1[i] + 100;
  }
  print(lt1);

  lt1 = lt1.map((e) => e * 100).toList();
  print(lt1);
  num? summ = lt1.reduce((value, element) {
    print(value);
    return value + element;
  });
  print(summ);
  var subSumm = lt1.fold(87700, (int value, element) {
    return value + element;
  });
  print(subSumm);

  ///take
  ///skip
  ///indexOf
  ///replace
}

void logLine(String? belgi) => print(belgi! * 100);
