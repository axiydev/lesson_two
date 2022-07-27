class Mammal {
  String? type;
  Mammal({this.type});
  get getType => type;
  set setType(String? type) => this.type = type;
}

class Nameble {
  String? name;
  get getName => name;
  set setName(String? name) => this.name = name;
}

class Dog extends Mammal implements Nameble {
  @override
  String? name;
  Dog({super.type, this.name});
  @override
  get getName => name;

  @override
  set setName(String? name) {
    this.name = name;
  }
}
