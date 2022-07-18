class Techno {
  //fields or attributes
  String? model;
  DateTime? productionYear;

  //Constructors
  Techno({required this.model, required this.productionYear}) {
    countObject();
  }

  //Named Constructor
  Techno.forModel({required this.model}) {
    counter++;
  }
  //setter
  set setModel(String? model) {
    this.model = model;
  }

  set setDateTime(DateTime productionYear) {
    this.productionYear = productionYear;
  }

  //getter
  get getModel => model;
  get getProductionYear => productionYear;
  //method
  void countWorkingTimeProduction() {
    //function body
    Duration duration = DateTime.now().difference(productionYear!);
    print(duration.inDays);
  }

  //static variables
  static var counter = 0;

  //static methods
  static void countObject() {
    counter++;
  }
}

class Porsche {
  double speed = 10;

  ///private variable
  final double _otherSpeed = 9;

  void speedUp(double deltaSpeed) {
    speed += deltaSpeed;
  }

  void speedDown(double deltaSpeed) {
    speed -= deltaSpeed;
  }

  info() {
    print("Speed:::$_otherSpeed");
  }
}
