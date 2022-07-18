///[mavzu] - Dart proggramingda operatorlar
void main(List<String> args) {
  //arifmetik operatorlar

  var a = 7;
  var b = 2;
  num? z = a + b;
  num? y = a - b;
  num? l = a * b;
  num? bolish = a / b;
  num? butunBolish = a ~/ b;
  num? qoldiq = a % b;
  // a++;
  // ++b;

  // print(b);
  // num? increment = a + (b++);
  // print('increment->$increment');
  // print(b);
  num? example = ((++a) - 6 * (b++)) / (a--);
  print(example);
  print(a);

  //a++;
  a = a + 1;
  //a--;
  a = a - 1;

  //<,>,>=,<= ,!=

  bool? resultBoolan = a > b; //true
  log(resultBoolan);
  var resBool1 = 7 <= 7;
  log(resBool1);
  log(a != b);

  log(2 * 2 == 4);

  //a=5
  //b=7
  //res =  a != b , res2=a==b ,res3  = a<(b++);
  int? s1 = 5, s2 = 7;
  bool? res1 = s1 != s2;
  bool? res2 = s1 == s2;
  bool? res3 = s1 < s2++;

  log(res1);
  log(res2);
  log(res3);
  //is ,is! == is not

  print(res1.runtimeType);

  print(res2 is bool);
  print(res3 is! bool);

  var first = true;
  var second = false;
  print(first | second);
  print(first & second);
  print(first ^ second);

  var numberOne = 12;
  var numberTwo = 14;
  print(numberOne | numberTwo);

  numberOne = numberOne ^ numberTwo;
  numberTwo ^= numberOne;
  numberOne ^= numberTwo;
  print("one-->$numberOne");
  print('two-->$numberTwo');

  print(numberOne >> 2);
  print(numberOne << 2);

  a = a + 3;
  a += 3;
  a -= 4;
  // *=,//=,%=,~/=
  a ~/= 4;

  //a=27
  //b=21
  //var res= ((a<b) || ((b++)<a) & (--a)<=19) ^ true
  ///mantiqiy operatorlar
  //  || - mantiqiy or,  && - mantiqiy and, ! - mantiqiy not
  a = 28;
  b = 21;
  print(((a < b) || ((b++) < a) & ((--a) <= 19) ^ true));
  // shart?res1:res2;
  var result = a >= 18 ? a : b;
  // if (a >= 18 && b < a) {
  //   //body1
  // } else {
  //   //body2
  // }

  //berilgan son juft bo`lsa sonni aks holda shu sonni qiymatini 2 taga oshirsin

  var resultOne = int.tryParse('67y') ?? "bu sonni butun songa ogirib bolmaydi";

  print(resultOne);

  print(a % 2 == 0 ? a : a = a + 2);
  a % 2 == 0 ? print(a) : print(a = a + 2);
  var resultEven = a % 2 == 0 ? a : a += 2;
  print(resultEven);

  var oz = 9;
  print(oz);
}

void log(Object? a) {
  print("qiymati--> $a");
}
