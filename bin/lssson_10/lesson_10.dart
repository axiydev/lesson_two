/*
Created by Axmadjon Isaqov on 09:07:35 08.06.2022
© 2022 
*/

import 'dart:collection';

///[@axi_dev]
void main(List<String> args) {
  var myNumber = 133438578437594;
  var res = '$myNumber'.split('');
  res = res.reversed.toList();
  String res2 = res.join('');
  int? reversedNumber = int.tryParse(res2);
  print(reversedNumber);

  print('%' * 100);
  String? text = 'akasldmdkalmtt';

  // print(text.indexOf('a'));
  // print(text.lastIndexOf('a'));

  var itemList = text.split('');
  for (var item in itemList) {
    var counter = 0;
    for (var element in itemList) {
      if (element == item) {
        counter++;
      }
    }
    if (counter == 1) {
      print(itemList.indexOf(item));
      break;
    }
  }

  ///davomi
  var itemCodeUnits = [...text.codeUnits];
  itemCodeUnits.sort();
  String? mySortedString = String.fromCharCodes(itemCodeUnits);
  print(mySortedString);
  var index = -1;
  for (var i = 0; i < mySortedString.length - 2; i++) {
    if (mySortedString[i] != mySortedString[i + 1]) {
      if (mySortedString[i + 1] != mySortedString[i + 2]) {
        index = i + 1;
        break;
      }
    }
  }
  print(index);

  //Set

  Set mySet = itemList.toSet();
  print(mySet);
  print(mySet.elementAt(1));
  Set<int> mySet1 = {1, 1, 2, 2, 6, 7, 9, 9};
  print(mySet1);
  var res1 = mySet1.reduce((value, element) {
    print(value);
    return value * element;
  });
  print(res1);

  print(
      mySet1.fold<int>(2, (previousValue, element) => previousValue * element));

  mySet1.removeAll({2, 7});
  print(mySet1);
  mySet1.removeWhere((element) => element % 2 == 0);
  print(mySet1);
  var res3 = mySet1.map((e) => e * 100);

  var st1 = {12, 7, 3, 9, 17};
  var st2 = {17, 10, 51, 5, 91};
  var stUm = st1.union(st2);
  print(stUm);
  var stD = st2.difference(st1);
  print(stD);
  var stInter = st1.intersection(st2);
  print(stInter);

  //HashSet list,set qiymatlarini sort qilib oladi

  List<int> myList = [3, 3, 1, 2, 7, 5, 5];
  HashMap<int, int> myHashMap = HashMap<int, int>();

  for (var i = 0; i < myList.length; i++) {
    myHashMap[myList[i]] = i;
  }

  print(myHashMap);
}
