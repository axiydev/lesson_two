/*
Created by Axmadjon Isaqov on 11:35:03 17.06.2022
© 2022 
*/

import 'package:equatable/equatable.dart';

///[@axi_dev]
void main(List<String> args) {
  var firstStudent = Student(name: "Mask", age: 27, id: '009r');
  var secondStudent = Student(name: "Mask", age: 28, id: '009r');
  if (firstStudent == secondStudent) {
    print("Ular teng");
  } else {
    print('teng emas');
  }

  firstStudent
    ..showInfo()
    ..infos();
}

class Student extends Equatable {
  final String? name;
  final int? age;
  final String? id;
  const Student({required this.age, required this.name, required this.id});
  @override
  List<Object?> get props => [name, id];

  void showInfo() {
    print("Show info function");
  }

  void infos() {
    print("Infos");
  }
}
