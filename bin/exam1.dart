// Diyor Omonov G2 variant - 2;
void main() {
  //***************************************************************************
  // (1) berilgan strinning int tipiga o'tkazing agar o'tmasa "berilgan string
  // raqam emas" degan yozuvni consolga chop qiling.
  print("1 - Misol !!!");
  String name = "22";
  int? n = int.tryParse(name);

  if (n is int) {
    print(n);
  } else {
    print("Berilgan string raqam emas");
  }
  logLine('*');

  // **************************************************************************
  // (2)berilgan 3 xonali soninig raqamlarini o'suvchi bo'lsa true aks xolda
  // false ni consolga chop qiling.
  // 123-> true
  // 121-> false
  // 258-> true

  print("2 - Misol !!!");
  var a = 123, a100, a10, a1;
  bool mybool;

  a100 = a / 100;
  a10 = a / 10 % 10;
  a1 = a % 10;

  mybool = (a100 < a10 && a10 < a1);
  print(mybool);

  logLine('*');
  // **************************************************************************
  // (3) list =[456,3,56,23,78] berilgan listdagi eng katta va eng kichik sonni
  // consolga quyidagi ko'rinisgda chop qiling.
  // Max number is 456
  // Min number is 3
  print("3 - Misol !!! ");
  List list = [456, 3, 56, 23, 78];
  list.sort();

  print("Eng kattasi --> ${list.last}");
  print("Eng kichigi --> ${list.first}");
  logLine('*');

  // **************************************************************************
  // (4) s1="Pdp Academy" s2 = "Best" birinchi string orasiga ikkinchi stringni
  // joylashtiring. Javob : " Pdp Best Academy".

  print("4 - Misol !!! ");
  String str = "Pdp Academy";
  String str2 = "Best";

  str = str.replaceAll(" ", " Best ");

  print(str);
  logLine('*');

  // **************************************************************************
  // (5) ikki xonali raqamlarning ichida sonda berilsa uni text ko'rinishida
  // consolga chop qiling.

  print("5 - Misol !!! ");
  int i = 44;
  String s = i.toString();
  print(s);
  logLine('*');
}

void logLine(String? belgi) => print(belgi! * 50);
