/*
Created by Axmadjon Isaqov on 09:03:32 04.07.2022
© 2022 
*/

import 'dart:convert';
import 'dart:io';
import 'package:path/path.dart' as PATH;

import 'animal_model.dart';

enum DevType { mobile_dev, web_dev, pyhton_dev }

///[@axi_dev]
void main(List<String> args) async {
  Directory myDir = Directory(
      r'/Users/axmadjonisaqov/StudioProjects/dart_projects/lesson_two/assets');
  //papkani xosil qilish
  myDir.createSync();

  String lastPath = PATH.join(myDir.path, 'word.txt');

  print(lastPath);
  File myTextFile = File(
    lastPath,
  );

  ///file xosil qilish
  myTextFile.createSync();

  ///create
  Animal horse = Animal(name: 'Mustang', age: 6, color: AnimalColor.black);
  myTextFile.writeAsStringSync(jsonEncode(horse.toMap()),
      mode: FileMode.writeOnly);

  ///read
  String? mySavedText = myTextFile.readAsStringSync();
  Animal? myObjectFromSaved = Animal.fromJson(jsonDecode(mySavedText));
  print(myObjectFromSaved.getName);

  ///update
  horse.setName = 'Mustang Pro';
  myTextFile.writeAsStringSync(jsonEncode(horse.toMap()), mode: FileMode.write);

  ///read
  String? mySavedText1 = myTextFile.readAsStringSync();
  Animal? myUpdatedObject = Animal.fromJson(jsonDecode(mySavedText1));
  print(myUpdatedObject.getName);

  ///delete
  myTextFile.deleteSync();
}
