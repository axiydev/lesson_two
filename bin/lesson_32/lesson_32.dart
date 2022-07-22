/*
Created by Axmadjon Isaqov on 08:52:00 22.07.2022
© 2022 @axi_dev 
*/

/*
Mavzu:::Konstruktors
*/

import 'models/hotels_model.dart';
import 'models/person_model.dart';
import 'models/water_model.dart';

void main(List<String> args) {
  DrinkWater cola = DrinkWater(
      name: "cola",
      productionDate: DateTime(2022, 07, 01),
      validTime: Duration(days: 365));

  DateTime data = DateTime(2022, 02, 28);
  print(data);

  DateTime? data1 = DateTime.tryParse("2020-12-13 00:00:00.000");
  print(data1);

  DateTime hozir = DateTime.now();
  print(hozir);

  DateTime time = DateTime.utc(2022);
  print(time);

  DateTime tim1 = DateTime.fromMillisecondsSinceEpoch(129);
  print(tim1);

  Duration farq = time.difference(data1!);

  // sleep(Duration(seconds: 3));
  print(farq.inDays);

  DrinkWater? pepsi =
      DrinkWater.redirect(name: "pepsi", validTime: Duration(days: 365));

  DrinkWater def = DrinkWater.fromDefault;
  print(def);

  Person student = Person.plant(type: PersonType.student, name: "Jon", age: 27);
  print(student);
  Person worker = Person.plant(type: PersonType.worker, name: "Tom", age: 30);
  print(worker);

  Hotel first = Hotel.fromCache(name: "Lux", id: 'i2');
  print(first);
  Hotel second = Hotel.fromCache(name: "Other", id: 'i2');
  print(second);
  Hotel third = Hotel.fromCache(name: "Other", id: 'i3');
  print(third);
}
