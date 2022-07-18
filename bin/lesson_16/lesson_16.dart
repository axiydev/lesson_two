/*
Created by Axmadjon Isaqov on 09:03:51 24.06.2022
© 2022 
*/

import 'dart:math';

///[@axi_dev]
//Generics
void main(List<String> args) {
  var lt = <dynamic>[
    1,
  ];
  print(lt.runtimeType);
  List<int> myNewList = lt.cast<int>();
  // List<int> myNewLt = lt as List<int>;
  Set<int> mySet = {1, 2, 3, 4, 5, 5};
  Set<int> myNewSet = mySet.cast<int>();

  //list = [1,2,3,5.6,7.3,889];
  var myResList = List<int>.empty(growable: true);
  var resSet = Set<int>.from({});
  var myMap = <String, dynamic>{"first": "Salom"};

  Iterator<int> myIterator = mySet.iterator;
  Iterable<int> myItaerable = myNewSet;

  var myLt = List.from({12, 3, 5});
  while (myIterator.moveNext()) {
    print(myIterator.current);
  }
  log<int>(23);
  log<String>("salom");
  log<List>([1, 2, 3, 4]);
  log(getSummNumbers<int>(23, 56));
  log(getSummNumbers<double>(4.5, 7.8));
  log(getSummNumbers<num>(78, 8.9));

  log(getPow<double, int>(23.4, 5));

  Product product1 =
      Product<String, int>(model: "23MK34", name: "Redmi", id: 324234);
  Product product2 =
      Product<num, String>(model: 5645453, name: "iPhone", id: 'hello232');

  print(product1);
  log(r'$' * 100);
  log(getAdd<int, String>(123, 'salom'));
  log('\$' * 100);
  log(addAllTypes<int>(12, 45));
  log(addAllTypes<String>('salom ', 'dunyo'));
  log(addAllTypes<double>(23.4, 67.89));
  log(addAllTypes<List>([
    232,
    56,
    87
  ], [
    89,
    234,
    567,
    435,
    56756,
  ]));

  Iterable mySt = getIterable(Set.from({1, 2, 3, 4, 4, 5}));
  print(mySt);

  Iterable myList = getIterable([1, 2, 3, 4, 4, 5]);
  print(myList);
}

T addAllTypes<T extends dynamic>(T a, T b) => a + b;

String? getAdd<T, K>(T a, K b) {
  return '$a $b';
}

void log<T>(
  T e,
) =>
    print(e);

T getSummNumbers<T extends num>(T a, T b) {
  return (a + b) as T;
}

T multiply<T extends dynamic>(T a, T b) {
  return (a * b) as T;
}

T getPow<T extends num, K extends num>(T asos, K daraja) {
  return pow(asos, daraja) as T;
}

T getIterableItem<T>(List<T> list) => list.first;

K getIterable<K extends dynamic>(K shopList) =>
    shopList.map((e) => e * 22) as K;

class Product<E, K> {
  E? model;
  String? name;
  K? id;
  Product({this.model, this.name, this.id});

  @override
  String toString() => """
name: $name
model: $model
id: $id""";
}
