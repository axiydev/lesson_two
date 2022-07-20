/*
Created by Axmadjon Isaqov on 09:03:59 20.07.2022
© 2022 @axi_dev 
*/
/*Mavzu::: Encapsulation */

import 'phone_model.dart';

void main(List<String> args) {
  Duration workingDuration = Duration();

  Smartphone iphone = Smartphone(
      model: "Iphone 13",
      serialNumber: "seria!@13",
      workingTime: workingDuration);

  String? info = iphone.getInfo;
  print(info);

  iphone.setWorkingTime = Duration(seconds: 61);

  print(iphone.getInfo);

  iphone.setModel("Iphone 14");
  print(iphone.getInfo);

  Planet myPlanet = Planet();
  print(myPlanet.position);

  myPlanet.setPlanet("Mars", 873433, "Silk way");

  print(myPlanet.name);

  ///yangi obekt hosil qilfik
  Smartphone galaxy = iphone.copyWith(
      model: 'Galaxy s22 ultra',
      serialNumber: 'jkhsfkjhsd',
      workingTime: Duration(days: 7));
  print(galaxy.getInfo);

  Car myCar = Car(100);
  print(myCar.speed);

  myCar.setSpeed = 65;
  print(myCar.speed);

  print(myCar);
  String myObjInfo = myCar.toString();
  print(myObjInfo);

  List<Worker>? workerList = List.empty(growable: true);

  Worker developer = Worker(name: "Tom", profession: 'Modile developer');
  workerList.add(developer);

  Worker developerOne = Worker(name: "Jerry", profession: 'Flutter developer');

  workerList.add(developerOne);

  Company myCompyany = Company(workerList);
  print(myCompyany);

  workerList.add(Worker(name: "Arnold", profession: 'Bodybuilder'));

  myCompyany.setWorkerList = workerList;

  print(myCompyany);
  double myNum = 11.2;
  print(myNum.truncate());
}
