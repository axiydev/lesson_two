/*
Created by Axmadjon Isaqov on 09:08:10 29.07.2022
© 2022 @axi_dev 
*/
/*
Mavzu:::Mixins
*/
import './models/mouse_model.dart';
import 'models/equality_model.dart';
import 'models/mysuper_model.dart';

void main(List<String> args) {
  Cat cat = Cat();
  cat.sleep();

  Counter? count = Counter(initialValue: 0, wasIncremented: false);
  Counter? count1 = Counter(initialValue: 0, wasIncremented: false);
  assert(count1 == count);
  print("objectlar teng");


  print("-------------------------"*10);
  SubClass sc=SubClass();
  sc.method();
}
