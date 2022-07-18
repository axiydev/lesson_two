enum ColorAvto { red, green, blue, black, white, yellow }

class Avto {
  //fields  yoki attributes
  String? name;
  int? age;
  ColorAvto? color;
//konstruktor
  Avto({required this.name, required this.age, required this.color});
//named konstruktor
  Avto.withoutColor({required this.name, required this.age});
//named konstruktor
  Avto.fromJson(Map<String, dynamic> json)
      : name = json['name'].toString().toUpperCase(),
        age = json['age'],
        color = json['color'];
//setters
  void setName(String? ism) {
    name = ism;
  }

  set setAnimalAge(int? age) {
    if (age! > this.age!) {
      this.age = age;
    }
  }

  @override
  bool operator ==(Object other) {
    return other is Avto && name == other.name && identical(age, other.age);
  }

//getters
  String? get getName => name;
  int? get getAge => age;
  ColorAvto? get getAnimalColor => color!;
//toMap funksiyasi yoki metodi
  Map<String, dynamic> toMap() {
    return {"name": name, "age": age, "color": color.toString()};
  }

  @override
  // TODO: implement hashCode
  int get hashCode => super.hashCode;
}
