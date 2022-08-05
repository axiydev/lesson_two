/*
Created by Axmadjon Isaqov on 08:57:34 05.08.2022
© 2022 @axi_dev 
*/

/*
Mavzu::: PMP
*/

import 'package:path/path.dart' as PATH;

import 'models/file_service.dart';
import 'models/lesson_model.dart';
import 'dart:io' as io;

void main(List<String> args) async {
  ///class
  Map<String, dynamic> json = {
    'avtoColor': 'red',
    'model': 'Prsche taycan',
    'id': 'heidew12',
    'production_year': DateTime.now()
  };
  Avto? avto = Avto.fromJson(json);
  print(avto.avtoColor);
  Map<String, dynamic> fromObject = avto.toJson();
  print(fromObject);

  final io.Directory directory = io.Directory.current;
  final String path = PATH.join(directory.path, 'assets/text.txt');
  final io.File file = io.File(path);
  final FileRepository fileRepo = FileRepository(file: file);

  await fileRepo.writeDataToFile('hello world');
  await fileRepo.addDataToFile("Salom dunyo");

  await Future.delayed(Duration(seconds: 5));
  await fileRepo.deleteFile();
}
