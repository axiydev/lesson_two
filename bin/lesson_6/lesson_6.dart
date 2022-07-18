/*
Created by Axmadjon Isaqov on 08:58:36 27.05.2022
© 2022 
*/

///@axi_dev
void main(List<String> args) {
  var counter = 0;
  //birinchi usul
  for (var j = 2; j < 100; j++) {
    if (isTub(j)) {
      print(j);
    }
  }
//2-usul
  for (var j = 2; j < 100; j++) {
    var counter = 0;
    for (var i = 1; i < j; i++) {
      if (j % i == 0) {
        counter = counter + 1;
      }
    }
    if (counter == 1) {
      print(j);
    }
    counter = 0;
  }

  //for(boshlangich qiymat; tugash_sharti;qadam){
  //sikl tanasi
  //}

  for (var i = 1; i < 100; i += 2) {
    print(i);
  }

  List listButun = [for (var j = 0; j < 100; j++) j];
  print("butun sonlar listi -> $listButun");
}

bool isTub(int number) {
  int? counter = 0;
  for (var i = 1; i < number; i++) {
    if (number % i == 0) {
      counter = counter! + 1;
    }
  }

  return counter == 1;
}
