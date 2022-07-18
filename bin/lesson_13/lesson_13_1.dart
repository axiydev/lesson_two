/*
Created by Axmadjon Isaqov on 12:08:16 17.06.2022
© 2022 
*/
import 'package:equatable/equatable.dart';
import 'dart:collection';

///[@axi_dev]
void main(List<String> args) {
  var firstStudent = Student(name: "Mask", age: 27, id: '009r');
  var secondStudent = Student(name: "Mask1", age: 28, id: '009r1');
  var lastStudent = Student(name: "Mask1", age: 28, id: '009r1');
  HashSet hSet = HashSet.of({
    Student(name: "Mask", age: 27, id: '009r'),
    Student(name: "Mask1", age: 28, id: '009r1'),
    Student(name: "Mask1", age: 28, id: '009r1')
  });

  if (hSet.contains(lastStudent)) {
    print("bu element hashset da bor");
  }
}

class Student extends Equatable {
  final String? name;
  final int? age;
  final String? id;
  const Student({required this.age, required this.name, required this.id});
  @override
  List<Object?> get props => [name, id];
}
