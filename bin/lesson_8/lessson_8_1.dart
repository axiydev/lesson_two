/*
Created by Axmadjon Isaqov on 09:06:12 03.06.2022
© 2022 
*/
///[@axi_dev]
///list and Map,Runes
void main(List<String> args) {
  //take , skip ,  replaceRange , indexOf
  //list hosil qilish
  List<int?> list = List<int?>.generate(
    10,
    (index) => index + 1,
  );
  for (var element in list) {
    print(element);
  }
  print('#' * 30);
  var listOther = list.take(5);
  for (var item in listOther) {
    print(item);
  }
  print('#' * 30);
  var otherList1 = list.skip(5);
  for (var element in otherList1) {
    print(element);
  }
  print('#' * 30);
  String? text = "rFlutter freamwork of Dart programming;";
  print(text.indexOf('r'));
  print(text.lastIndexOf('r'));
  var lt = text.split('');
  for (var i = 0; i < lt.length; i++) {
    if (lt[i] == 'r') {
      print(i);
    }
  }

  print('%' * 100);
  var indexBefore = 0;
  var currentIndex = lt.indexOf('r');
  for (var i in lt) {
    if (i == 'r') {
      print(currentIndex);
      currentIndex = lt.indexOf(i, indexBefore + 1);
      indexBefore = currentIndex;
    }
  }

  list.replaceRange(3, 6, [7, 677, 900, 860]);
  print(list);
  var lt1 = List.filled(2, 0);
  lt1[0] = 56;
  lt1[1] = 90;
  print(lt1);
  print('&' * 100);
  //Map
  //{k1:v1,k2:v2,k3:v3....kn:vn}
  Map<String, dynamic> mpData = {'a': 97, 'k': 97};
  print(mpData['a']);
  mpData['r'] = 114;
  print(mpData);
  mpData['l'] = [576, 90, 45];
  print(mpData);
  print('&' * 100);
  var keys = mpData.keys.toList();
  for (var i = 0; i < mpData.length; i++) {
    print('${keys[i]}:${mpData[keys[i]]}');
  }

  mpData.forEach((key, value) {
    print('$key : $value');
  });

  mpData.addAll({'ism': "Tom", 'age': 25});
  print(mpData);

  var mpEntires = mpData.entries;
  print(mpEntires.elementAt(0));
  MapEntry? data = mpEntires.first;
  print(data.key);
  print(data.value);
  Map<String?, dynamic> emptyMap = {};
  var emptyOne = {};
  for (var entry in mpData.entries) {
    print('${entry.key} : ${entry.value}');
    emptyMap[entry.key] = entry.value;
  }

  print(emptyMap);

  emptyOne.addEntries(mpEntires);
  print(emptyOne);

  Object? data1 = {45: 'Salom', 'b': "hello"};
  print((data1 as Map));
  Map<String, dynamic> mpNewData = mpData;
  Map<String, dynamic> mpNewData1 = emptyOne.cast<String, dynamic>();

  var mpNew = mpNewData
      .map((key, value) => MapEntry(key, key == 'l' ? "hello" : value));
  print(mpNew);

  List listResult = mpNew.keys.toList();
  print(listResult);
  listResult = mpNew.values.toList();
  print(listResult);

  mpNew.update('ism', (value) => 'Jerry');
  print(mpNew);
  mpNew.update('age', (value) => (value as int) + 60);
  print(mpNew);

  mpNew.removeWhere((key, value) => value == 97);
  print(mpNew);
  var item = mpNew['age'];
  mpNew.remove('age');
  mpNew['yosh'] = item;
  print(mpNew);
}
