class PC {
  late bool? isOn;
  PC({this.isOn});

  void turnOn() {
    isOn = true;
  }

  void turnOff() {
    isOn = false;
  }
}
