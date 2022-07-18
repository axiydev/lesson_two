void main(List<String> args) {
  for (var i = 1; i <= 100000; i++) {
    var result = Bolivchi(son: i);
    if (result.perfektNumber()!) {
      print("$i is perfect number");
    }
  }
}

class Bolivchi {
  int? son;

  Bolivchi({required this.son});

  bool? perfektNumber() {
    int sum = 0;
    for (var i = 1; i < son!; i++) {
      if (son! % i == 0) {
        sum += i;
      }
    }
    if (son == sum) {
      return true;
    } else {
      return false;
    }
  }
}
