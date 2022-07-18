void main(List<String> args) {
  var str = '9';
  var str1 = '-8';
  var summ = 0;
  summ = int.tryParse(str)! + int.tryParse(str1)!;
  print(summ);
}
