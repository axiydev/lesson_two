import 'dart:io';

void main(List<String> args) async {
  Directory currentDir = Directory.current;
  print(currentDir.path);
  StringBuffer? stringBuffer = StringBuffer();
  File myFile = File("${currentDir.path}/assets/text.txt");
  await myFile.create();
  print('file created');
  for (var i = 0; i < 1000; i++) {
    stringBuffer.writeln('flutter developer');
  }
  await myFile.writeAsString(stringBuffer.toString());
  // if (await myFile.exists()) {
  //   await myFile.delete();
  //   print('my file deleted');
  // }
}
