class Animal {
  //fields  yoki attributes
  String? name;
  int? age;
  String? color;
//konstruktor
  Animal({required this.name, required this.age, required this.color});
//named konstruktor
  Animal.withoutColor({required this.name, required this.age});
//named konstruktor
  Animal.fromJson(Map<String, dynamic> json)
      : name = json['name'].toString().toUpperCase(),
        age = json['age'],
        color = json['color'];
//setters
  set setName(String? ism) {
    name = ism;
  }

  set setAnimalAge(int? age) {
    if (age! > this.age!) {
      this.age = age;
    }
  }

  @override
  bool operator ==(Object other) {
    return other is Animal && name == other.name && identical(age, other.age);
  }

//getters
  String? get getName => name;
  int? get getAge => age;
  String? get getAnimalColor => color!;
//toMap funksiyasi yoki metodi
  Map<String, dynamic> toMap() {
    return {"name": name, "age": age, "color": color};
  }

  @override
  // TODO: implement hashCode
  int get hashCode => super.hashCode;
}

class AnimalColor {
  static const String black = "black";
  static const String white = "White";
  static const String red = 'red';
  static const String green = 'green';
  static const String blue = 'blue';
  static const String yellow = 'yellow';
}
