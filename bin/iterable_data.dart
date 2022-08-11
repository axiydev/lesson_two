import 'dart:io';

void main() {
  print(getIterable());
}

Iterable<int> getIterable() sync* {
  for (var i = 0; i <= 10; i++) {
    sleep(Duration(seconds: 1));
    yield i;
  }
}
