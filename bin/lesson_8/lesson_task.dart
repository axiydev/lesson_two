void main(List<String> args) {
  String? balance = "[(n{s}a)]";
  List opened = ["(", '{', '['];
  List closed = [')', '}', ']'];
  List empty = [];
  bool balanced = true;
  for (var i in balance.split('')) {
    if (opened.contains(i)) {
      empty.add(i);
    } else if (closed.contains(i)) {
      var index = closed.indexOf(i);
      if (empty.isNotEmpty && empty.last == opened[index]) {
        empty.removeLast();
      } else {
        balanced = false;
      }
    }
  }
  var result = balanced && empty.isEmpty;
  print(result);

  int count1 = 0, count2 = 0, count3 = 0, count4 = 0, count5 = 0, count6 = 0;
  String? juftlik = "{(ab)}";
  for (int i = 0; i < juftlik.length; i++) {
    if (juftlik.contains('(')) {
      count1++;
    }
    if (juftlik.contains(')')) {
      count2++;
    }
    if (juftlik.contains('{')) {
      count3++;
    }
    if (juftlik.contains('}')) {
      count4++;
    }
    if (juftlik.contains('[')) {
      count5++;
    }
    if (juftlik.contains(']')) {
      count6++;
    }
  }
  if (count1 == count2 && count3 == count4 && count5 == count6) {
    print(true);
  } else {
    print(false);
  }
}
