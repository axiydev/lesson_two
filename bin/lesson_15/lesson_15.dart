/*
Created by Axmadjon Isaqov on 09:06:35 22.06.2022
© 2022 
*/
//collections
// import 'dart:math' show sin,tan;
// import 'dart:math' as Math;
// import 'dart:math' hide cos,sqrt;
import 'dart:collection';

void main(List<String> args) {
  Queue myQueue = Queue();
  List<int> lt = [for (var i = 0; i <= 50; i++) 2 * i + 1];
  List<int> myList = List.of([1, 2, 3, 4, 5]);
  List<int> mySecondList = List.from([1, 2, 3, 4, 5, 6]);
  List<int> myThirdList =
      List.empty(growable: true); //bosh listni List type orqali elon qilish
  List<int> myLt = List.filled(10, 0); // 10 ta 0 elementga ega
  List<int> myLt1 = List.unmodifiable([1, 2, 3, 4, 5]);
  List<int?> myLt2 = List.generate(50, (index) {
    return 2 * index + 1;
  });

  myThirdList.add(12);
  myThirdList.add(12);
  myThirdList.forEach(simpleFunc);
  // myLt1.add(12);
  print(myLt1);
  myLt2.forEach(print);

  List<int?> result = [
    for (var i = 11; i <= 100; i += 2)
      if ((i ~/ 10 + i % 10) % 4 == 0) i
  ];
  print(myLt.asMap());
  print(myList.any(
    (element) => element == 5,
  ));
  print(result);

  Set st1 = {1, 2, 3, 4, 5};
  Set st2 = Set.of({4, 5, 6, 7, 8, 9, 10});
  Set st3 = {for (var i = 10; i < 100; i++) i};
  st3 = st1.intersection(st2);
  Set resultSt = (st1.union(st2)).difference(st3);
  print(resultSt);

  resultSt.remove(100);
  print(resultSt);
  var mp = Map.of({});
  mp['kalit'] = "qiymat";
  print(mp);

  Queue<int?> navabat = Queue.of({});
  navabat.add(5);
  navabat.add(15);
  navabat.add(25);
  navabat.add(35);
  print(navabat);

  print(navabat.first);
  print(navabat.elementAt(0));
  navabat.addFirst(100);
  navabat.addLast(1200);
  print(navabat);

  Iterator iterable = navabat.iterator;
  while (iterable.moveNext()) {
    print(iterable.current);
  }

  //  f(n)=1+7*f(n-1)  f(0)=9
  // f(n) = f(n-1) + 2 f(0)=5
}

void simpleFunc(Object? element) {
  print(element);
}
//massiv 23 gacha
//massiv 74-chisi
