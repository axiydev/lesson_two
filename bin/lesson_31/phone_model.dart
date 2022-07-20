class Smartphone {
  String? serialNumber;
  String? model;
  Duration? workingTime;
  //Construktor
  Smartphone({this.model, this.workingTime, this.serialNumber});

  //setter
  set setWorkingTime(Duration workingTime) {
    if (workingTime != this.workingTime) {
      this.workingTime = workingTime;
    }
  }

  //getter

  String? get getInfo {
    return """
model: $model
seria: $serialNumber
working time: $workingTime
""";
  }

  //setter
  void setModel(String model) {
    this.model = model;
  }

  //getter

  String? getModel() {
    return model;
  }

  Smartphone copyWith(
      {String? model, String? serialNumber, Duration? workingTime}) {
    return Smartphone(
        model: model ?? this.model,
        serialNumber: serialNumber ?? this.serialNumber,
        workingTime: workingTime ?? this.workingTime);
  }
}

class Planet {
  late String? _name = "Earth";
  late int? _age = 2100000;
  late String? _position = "Silk way gallactic";

  void setPlanet(String? name, int? age, String? position) {
    _age = age;
    _name = name;
    _position = position;
  }

  get name => _name;
  get age => _age;
  get position => _position;
}

class Car {
  late double? _speed;

  Car(double? speed) : _speed = speed;

  double? get speed => _speed;

  set setSpeed(double? speed) {
    if (_speed != null && speed! > _speed!) {
      _speed = speed;
    }
  }

  @override
  String toString() {
    return "Car speed: $speed";
  }
}

class Company {
  List<Worker>? _workerList;

  Company(List<Worker>? listWorker) {
    _workerList = listWorker;
  }

  set setWorkerList(List<Worker>? workerList) {
    _workerList = workerList;
  }

  get getWorkerList => _workerList;

  @override
  String toString() {
    String emp = '';

    for (var item in _workerList!) {
      emp += '${item.name}::::${item.profession}\n';
    }
    return emp;
  }
}

class Worker {
  String? name;
  String? profession;
  Worker({required this.name, required this.profession});
}
