/*
Created by Axmadjon Isaqov on 09:06:42 25.07.2022
© 2022 @axi_dev 
*/

/*
Mavzu:::Inheritance,Overriding,Abstraction
*/
import 'models/lesson_model.dart';
import 'models/vehicle_model.dart';

void main(List<String> args) {
  Bus myObject = Bus();
  myObject.printModel();

  C obj = C();
  // obj.doA("Sherzod");
  // obj.doB("Developer");
  obj.doC("Tom");
}
