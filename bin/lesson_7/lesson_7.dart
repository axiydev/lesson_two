import 'dart:math' as MATH;

void main(List<String> args) {
  Object butunRaqam = 45;
  print((butunRaqam as int).isEven);
  print(MATH.sqrt(16));
  String? strNumber = '8457685';
  double? result = double.tryParse(strNumber);
  print('$result is ${result.runtimeType}');
  String? numberTwo = "2022";
  num? resultNumber = num.tryParse(numberTwo);
  print("$resultNumber is num and it`s type is num --> ${resultNumber is num}");
  int numberInteger = butunRaqam;
  print(numberInteger.isEven);
  numberInteger.abs();
  print(numberInteger.isPositive);
  var neagtiveNumber = -687;

  print(neagtiveNumber.modul());

  String? strNumberFromInteger = neagtiveNumber.toStr;
  var regativeNumberTwo = -686;
  print(regativeNumberTwo.getMax(neagtiveNumber));
  double? a = 0.0 / 0.0;
  print(a.isNaN);
  double? b = -3.54000000004;
  print(b.ceil());
  print(b.compareTo(-3.0000000000002));
  print(b.floor());
  print(b.round()); //matematik yalitlash
  print(b.toInt());
  print(b.truncate()); //nolga qrab yaxlitlash
  print(b.toStringAsFixed(2));
  print(b.toStringAsPrecision(4));
  print(b.toStringAsExponential(2));
  print(b.ceilToDouble());
  print(b.sign);

  // var result=56.8+67+100+pow(e,10)
  int? number = 45;
  print(number.toRadixString(2));

  ///String
  for (var i = 0; i < 20; i++) {
    print('$i' * i);
  }
  String? str = "Never say never say 10";

  print(str.contains('ok'));
  print(str.endsWith('ever'));
  print(str.startsWith('Never'));
  print(str.replaceAll('say', 'ayt'));
  print(str.replaceRange(0, 5, 'Hech qachon'));
  print(str.substring(0, 5));
  print(str.trim());
  print('=======================');
  // RegExp exp = RegExp(r'[0-9]');
  'say'.allMatches(str).forEach((element) {
    print(element.start);
  });
  //"Discord is the best streaming platform and the best tool for me";

  String? newStr =
      "Discord is the best streaming platform and the best tool for me";
  String st = '';
  var list = newStr.split(' ');
  print(list);
  for (var item in list) {
    if (item != 'the') {
      if (item == 'best') {
        st += ' eng zori';
      } else {
        st += (' $item');
      }
    }
  }
  print(st.trim());
  String? birinchi = 'Salom\ndunyo';
  String? ikkinchi = '''Salom
dunyo
sdlkfhkjsdh
sdfjlkdshj
dslkfjkj
sdlfkjhkdj
sdfhkhkjhkjds
''';

  print(birinchi);
  print(ikkinchi);

  print('Salom\\ndunyo \$b');
  String third = newStr + st;
  print(third);
  String? ism = 'Tom';
  String? lastName = 'Jerry';
  String? fullName = '$ism $lastName';
  print(fullName);
}

extension on num {
  bool get isPositive {
    return this >= 0;
  }

  String? get toStr {
    return '$this';
  }

  num modul() {
    return this > 0 ? this : -this;
  }

  num? getMax(num? other) {
    return this > other! ? this : other;
  }
}
