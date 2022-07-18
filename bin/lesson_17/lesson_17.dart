/*
Created by Axmadjon Isaqov on 09:01:35 27.06.2022
© 2022 
*/
typedef B = int?;
typedef Dub = double?;

typedef Compare = int Function(
    int a, int b); // typedef Compare=int Function(int a,int b);

typedef MyFunc = void Function(String? info);
typedef ManyOper = num? Function(num? a, num? b);
void main(List<String> args) {
  B a = 45;
  print(a);
  print(a.runtimeType);
  //typedef
  MyFunc myFunc;
  myFunc = printMe;

  myFunc("My Function");

  myFunc = showInfo;
  myFunc("This is other function");
//typedef
  ManyOper oper;
  oper = addNumbers;
  print(oper(23, 5));

  oper = subNumbers;
  print(oper(34, 10));
}

num? addNumbers(num? a, num? b) => a! + b!;
num? subNumbers(num? a, num? b) => a! - b!;
void printMe(String? info) {
  print('bu print me funfsiyasi $info');
}

void showInfo(String? info) {
  print(info);
}
