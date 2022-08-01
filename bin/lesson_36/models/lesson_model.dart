abstract class Base {
  void printInfo();
}

class ChildOne extends Base {
  Future<void> getData() async {
    await Future.delayed(Duration(seconds: 2), () {
      print("In future delayed");
    });
    print("This is get data method in child one class");
  }

  @override
  void printInfo() {
    print("this is child one");
  }
}

class ChildTwo extends Base {
  @override
  void printInfo() {
    print("this is child two");
  }
}

class ChildThree extends Base {
  @override
  void printInfo() {
    print("this is child three");
  }
}

class CommonInfo {
  void getInfo(Base? child) {
    child!.printInfo();
  }
}
