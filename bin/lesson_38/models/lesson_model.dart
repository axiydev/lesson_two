import 'package:mocktail/mocktail.dart';
part 'lesson_model.mocktail.dart';

///AvtoColor enum
enum AvtoColor {
  red('red'),
  green('green'),
  blue('blue'),
  orange('orange'),
  black('black'),
  grey('grey');

  final String? color;
  const AvtoColor(this.color);
}

///data class Avto
class Avto {
  ///fields and attributes
  String? model;
  DateTime? productionYear;
  String? id;
  AvtoColor? avtoColor;

  ///construktor
  Avto._private(
      {required this.avtoColor,
      required this.id,
      required this.model,
      required this.productionYear});

  ///factory construktor
  factory Avto.fromJson(Map<String, dynamic> json) {
    late AvtoColor? color;
    switch (json['avtoColor']) {
      case 'red':
        color = AvtoColor.red;
        break;
      case 'green':
        color = AvtoColor.green;
        break;
      case 'blue':
        color = AvtoColor.blue;
        break;
      case 'grey':
        color = AvtoColor.grey;
        break;
      case 'orange':
        color = AvtoColor.orange;
        break;
      case 'black':
        color = AvtoColor.black;
        break;
    }

    return Avto._private(
        avtoColor: color,
        id: json['id'],
        model: json['model'],
        productionYear: json['production_year']);
  }

  ///setter
  set setColor(AvtoColor? avtoColor) => this.avtoColor = avtoColor;

  ///getter
  get getColor => avtoColor;

  ///toJson
  Map<String, dynamic> toJson() => {
        'avtoModel': model,
        'id': id,
        'production_year': productionYear,
        'avtoColor': avtoColor!.color
      };
}
