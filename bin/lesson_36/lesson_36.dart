/*
Created by Axmadjon Isaqov on 08:55:46 01.08.2022
© 2022 @axi_dev 
*/

/*
Mavzu::: Polimorfizm,Reactive dasturlash
*/
import 'models/lesson_model.dart';
import 'models/second_model.dart';

void main(List<String> args) async {
  ChildOne obj = ChildOne();

  CommonInfo info = CommonInfo();

  info.getInfo(obj);

  ChildTwo secondChild = ChildTwo();

  Base obj1 = ChildOne();

  Base b = obj1;

  info.getInfo(secondChild);
  // await obj.getData();

  Monkey monkey = Monkey();
  Apple apple = Apple();
  Banana banana = Banana();
  monkey.eat(banana);
  Elephant elephant = Elephant();
  elephant.eat(apple);
}
