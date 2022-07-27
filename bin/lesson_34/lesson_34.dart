/*
Created by Axmadjon Isaqov on 08:59:25 27.07.2022
© 2022 @axi_dev 
*/

/*
Mavzu:::Interface
*/
import 'models/car_model.dart';
import 'models/inter_model.dart';

void main(List<String> args) {
  ChildOne child = ChildOne("Tom");
  child.sleep();

  // Vehicle? car = Car('Red');

  // car.onCall();

  Vehicle? bus = Bus('Blue');
  bus.onCall();
  call("Jerry");
  call("Jack", 34);
}

void call([String? name = "Tom", int? age = 20]) {
  print(name);
  print(age);
}
