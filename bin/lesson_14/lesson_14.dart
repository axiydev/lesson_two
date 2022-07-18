/*
Created by Axmadjon Isaqov on 09:06:28 20.06.2022
© 2022 
*/

enum SystemStatus { windows, macos, linux, android, ios }

class Status {
  static const String android = "android";
  static const String macos = 'macos';
  static const String linux = 'linux';
  static const String windows = 'windows';
  static const String ios = 'ios';
}

///[@axi_dev]
///mavzu: Enumerations

void main(List<String> args) {
  List<SystemStatus> myList = SystemStatus.values;
  for (var item in myList) {
    print(item.name);
  }

  String? myGadget = Status.android;
  print(myGadget);
  SystemStatus? sys = SystemStatus.macos;
  sys = SystemStatus.ios;
  if (sys == SystemStatus.android) {
    print("this is android");
  } else if (sys == SystemStatus.linux) {
    print("this is linux");
  } else if (sys == SystemStatus.ios) {
    print("this is ios");
  } else if (sys == SystemStatus.windows) {
    print("this is windows");
  } else if (sys == SystemStatus.macos) {
    print("this is macos");
  }

  getSystemStatus(Status.android);
}

void getSystemStatus(String? status) {
  switch (status) {
    case Status.android:
      print("this is android");
      break;
    case Status.linux:
      print("linux");
      break;
    case Status.macos:
      print('macos');
      break;
  }
}
