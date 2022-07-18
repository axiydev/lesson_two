/*
Created by Axmadjon Isaqov on 09:17:20 18.07.2022
© 2022 
*/

import 'comp_model.dart';
import 'techno_model.dart';

///[@axi_dev]
///Mavzu OOP
void main(List<String> args) {
  Techno firstObject =
      Techno(model: "iPhone 13", productionYear: DateTime(2021, 9, 14));

  print(firstObject.model);
  print(firstObject.productionYear);

  Techno secondObject = Techno.forModel(model: "Samsung Galaxy s22");
  print(secondObject.getModel);

  secondObject.setModel = "S22 Ultra";
  print(secondObject.getModel);
  print(secondObject.model);

  firstObject.countWorkingTimeProduction();

  print(Techno.counter);

  PC myPc = PC(isOn: false);
  print(myPc.isOn);

  myPc.turnOn();

  print(myPc.isOn);

  final porsche = Porsche();
  print(porsche.speed);
  porsche.speedUp(24);
  porsche.speedUp(10);
  porsche.speedDown(7);
  print(porsche.speed);
  int result = CalculatorLib.add(23, 8);
  print(result);
}

class CalculatorLib {
  static int add(int a, int b) {
    return a + b;
  }
}

class MyConsts {
  static const botToken = 'token';

  static void checkNumber(num? number) {
    if (number != null) print('Number is not null');
  }
}
