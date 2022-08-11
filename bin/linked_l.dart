class Node<T> {
  T? data;
  Node<T>? next;
  Node({required this.data, this.next});
}

void main(List<String> args) {
  var first = Node<int>(data: 4);
  var second = Node<int>(data: 5);
  var third = Node(data: 6);

  first.next = second;
  second.next = third;

  // do {
  //   print(first.data);
  //   first = first.next!;
  // } while (first.next != null);

  while (first.data != null) {
    print(first.data);
    first = first.next!;
  }
}
