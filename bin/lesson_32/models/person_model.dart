enum PersonType { student, worker }

class Worker extends Person {
  @override
  String? name;
  @override
  int? age;
  Worker({this.name, this.age});
  @override
  String toString() {
    return "Worker: $name";
  }
}

class Student extends Person {
  // @override
  // String? name;
  // @override
  // int? age;

  Student({String? name, int? age}) : super(name: name, age: age);
  @override
  String toString() {
    return "Student: $name";
  }
}

class Person {
  String? name;
  int? age;
  Person({this.name, this.age});

  static final Person person = Person();

  factory Person.plant({PersonType? type, String? name, int? age}) {
    switch (type) {
      case PersonType.student:
        return Student(name: name, age: age);
      case PersonType.worker:
        return Worker(name: name, age: age);
      default:
        return Person(name: name, age: age);
    }
  }
}
