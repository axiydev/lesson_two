import 'dart:io' as io;

import 'custom_exceptions.dart';

///service
abstract class FileRepo {
  io.File? file;
  FileRepo({required this.file});

  Future<void> writeDataToFile(String? data);
  Future<void> addDataToFile(String? data);
  Future<void> deleteFile();
}

class FileRepository extends FileRepo {
  FileRepository({super.file});

  @override
  Future<void> deleteFile() async {
    await file!.delete();
    print('File muvofaqiyatli o`chirildi');
  }

  @override
  Future<void> writeDataToFile(String? data) async {
    try {
      if (!(await file!.exists())) {
        await file!.writeAsString(data!, mode: io.FileMode.append);
        print('File Succesfully created');
      } else {
        throw CustomException("file tuzishda xatolik bor");
      }
    } on CustomException {
      print("file tuzishda xatolik bor");
    }
  }

  @override
  Future<void> addDataToFile(String? data) async {
    await file!.writeAsString(data!, mode: io.FileMode.append);
  }
}
