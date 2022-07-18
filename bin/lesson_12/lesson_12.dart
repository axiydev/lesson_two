/*
Created by Axmadjon Isaqov on 10:28:25 15.06.2022
© 2022 
*/

///[@axi_dev]
void main(List<String> args) {
  Avto spark = Avto(
    model: "Spark LTZ",
    price: 9000,
  );
  print(spark.model);
  spark.setPrice(6000);
  print(spark.price);
  spark.printInfo();

  spark.setSpecialYear = 2007;
  print(spark.getProductionYear());

  int? yearProduction = spark.getProductionYear();
  print(yearProduction);
  spark.model = "Mers";
  String? ozgaruvchiModel = spark.getModel;
  print(ozgaruvchiModel);

  print("${spark.changeValyuta(11000)!} som");

  Avto myCar = Avto.modelAndPrice(model: "Porsche", price: 135000);
  print(myCar.year);

  Avto myCar1 = Avto.modelAndPrice(model: "Porsche 911", price: 136000);
  print(Avto.counter);
  Avto.printCounter();
}

class Avto {
//fields or attributes
  String? model;
  int? year;
  double? price;

  ///constructor
  Avto({required this.model, this.year = 2000, required this.price}) {
    counter++;
  }

  Avto.modelAndPrice({required this.model, required this.price}) {
    counter++;
  }
  //setter
  void setPrice(double? price) {
    this.price = price;
  }

  //getter special
  set setSpecialYear(int? year) {
    this.year = year;
  }

//getter
  int? getProductionYear() {
    return year;
  }

//getter special
  String? get getModel {
    return model;
  }

  //function or method
  void printInfo() {
    print("""
Model:$model
Price:$price
Producyion year:$year
""");
  }

  //function
  double? changeValyuta(double? dollarKursi) {
    return price! * dollarKursi!;
  }

  //static
  static int counter = 0;
  static void printCounter() {
    print('$counter ta Avto bor');
  }
}
