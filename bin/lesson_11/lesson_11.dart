import 'dart:math';

void main(List<String> args) {
  var balance = "{[]}";

  var balance1 = "()[]{}";
// Output: true
// Input: "(]"
// Output: false
// Input: "([)]"
// Output: false
// Input: "{[]}"
  bool? isBlanced = true;
  List emp = [];
  for (var item in balance.split('')) {
    List opened = ["(", '{', "["];
    List closed = [")", "}", "]"];
    if (opened.contains(item)) {
      emp.add(item);
    } else if (closed.contains(item)) {
      var index = closed.indexOf(item);
      if (emp.isNotEmpty && emp.last == opened[index]) {
        emp.removeLast();
      } else {
        isBlanced = false;
      }
    }
  }

  print(isBlanced! && emp.isEmpty);
  print('*' * 100);

  //Functions

  num? result = kvadratFunction(34, 3);
  print(result);
  kvadratFunc(34, 2);
  var res1 = kvdratFunctionOne(34, 3);
  print(res1);
  var resOne = squareFuncDefault(100, 4);
  print(resOne);

  var otherResult = squareFuncOther(asos1: 67, daraja: 5, asos2: 56);
  print(otherResult);
  String? fullName = getFullName();
  print(fullName);
  int butun = getButunNumber(12, 7);
  print(butun);
  String? fullNameOne = getFullNameOther("aRNOLD", 'stallone');
  print(fullNameOne);

  print(factorial(5));

  // f(0)=1 ,f(1)=1
  //  f(n)=n*f(n-1)

  print(fib(4));

  print(summ(10));
}

int summ(int n) {
  if (n == 0) {
    return 0;
  }
  return n + summ(n - 1);
}

int fib(int n) {
  if (n == 0 || n == 1) {
    return 1;
  }
  return fib(n - 1) + fib(n - 2);
}

int factorial(int n) {
  if (n == 0 || n == 1) {
    return 1;
  }
  return n * factorial(n - 1);
}

String? getFullNameOther(String name, String lastName) {
  String? first = convertToUpper(name);
  String? last = convertToUpper(lastName);
  return "$first $last";
}

String? convertToUpper(String? text) {
  text = text![0].toUpperCase() + text.substring(1).toLowerCase();
  return text;
}

int getButunNumber(int a, int b) {
  return getSub(a, b);
}

int getSub(int a, int b) {
  return a ~/ b;
}

String? getFullName({String? ism = "Juggernaut", String? familiya = 'Jerry'}) =>
    '${ism!} ${familiya!}';

num? kvadratFunction(num? n, int? x) {
  return pow(n!, x!);
}

void kvadratFunc(num? n, int? x) {
  print(pow(n!, x!));
}

kvdratFunctionOne(num? n, int? x) {
  print(pow(n!, x!));
  return pow(n, x);
}

num? squareFunc(num? n, int? x) => pow(n!, x!);

num? squareFuncDefault(num? n, [int? x = 2, int? z]) => pow(n!, x!);

num? squareFuncOther(
        {required num asos1, required int daraja, required num asos2}) =>
    pow(asos1, daraja);
