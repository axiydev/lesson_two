typedef butunType = int;
/*
Created by Axmadjon Isaqov on 11:52:46 20.05.2022
© 2022 
*/
///https://t.me/dart_code
///bu [ main ] funksiyasi
/*
  var z=67;
  var str="Salom";
*/
void main(List<String> args) {
  print("hello pdp academy");
  butunType butunSonQiymati = 45; //camel case
  print(butunSonQiymati);
  // num a = 78;
  // int num = 34;  //bu xato
  var myName = "Axmadjon";
  var myLastName = "Isaqov";
  print("name: $myName\nsurname:\t${myLastName.toLowerCase()}");
  // print(r"\"Assalom\"");
  var myname = "Axmadjon";

  print(myName);
  print("axmadjon" == "Axmadjon"); //case sensetive
  //ey developer bu ozgaruvchi
  int b, c, d;

  String resultOne = "Salom " "dunyo " + 7.toString();
  print(resultOne);
  String resultTwo = "Hello world ${7}";
  print(resultTwo);
  "Dart programming".printString;
  21.printInt();
  print("nimadir");
  chopEtish("nimadir");
  chopEtish(67);
  chopEtish(5.6);
  Uber qoshni = Uber();
  qoshni.printData("Malumot Uber");
  var taxi = Uber();
  taxi.birorNarsa();
  //P=4*a
//1-misol
  print("----------------------1-misol----------------");
  int perimetr, a = 12;
  perimetr = 4 * a;
  print("perimetr: $perimetr");
}

class Uber {
  void printData(var a) {
    print(a);
  }

  void birorNarsa() {
    print("biror narsa");
  }
}

void chopEtish(var a) {
  print(a);
}

extension on String {
  get printString {
    print(this);
  }
}

extension on int {
  void printInt() {
    print(this);
  }
}
