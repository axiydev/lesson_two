class DrinkWater {
  ///fields
  String? name;
  DateTime? productionDate;
  Duration? validTime;
  static final DrinkWater fromDefault = DrinkWater(
      name: "Person",
      productionDate: DateTime.now(),
      validTime: Duration(days: 365));

  ///construktor
  DrinkWater({this.name, this.productionDate, this.validTime});

  ///named construktor
  DrinkWater.simple(
      {String? name, DateTime? productionDate, Duration? validTime}) {
    this.name = name;
    this.productionDate = productionDate;
    this.validTime = validTime;
  }

  ///named construktor
  DrinkWater.twoDots(
      {String? name, DateTime? productionDate, Duration? validTime})
      : name = name,
        productionDate = productionDate,
        validTime = validTime;

  ///redirect constructor
  DrinkWater.redirect({String? name, Duration? validTime})
      : this(name: name, productionDate: DateTime.now(), validTime: validTime);

  @override
  String toString() {
    return """
name: $name
Production Data: $productionDate
Valid time: $validTime 
""";
  }
}
