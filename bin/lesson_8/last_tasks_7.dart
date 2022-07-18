void main(List<String> args) {
  //28
  String? c = 't';
  String? text = 'Dart from flutter';
  text = text.replaceAll(c, c * 2);
  print(text);
  //29
  String? text2 = "Salom";
  text = text.replaceAll(c, text2 + c);
  print(text);
  text = 'Dart from flutter';
  List lt = text.split(' ');
  print(lt);
  print(lt.join(' '));
}
