abstract class Body {}

abstract class Worker {
  void work();
}

abstract class Sleep {
  void sleep();
}

abstract class Charge {
  void charge();
}

class Human extends Body implements Worker, Sleep {
  @override
  void sleep() {}

  @override
  void work() {}
}

class Robot extends Body implements Worker, Charge {
  @override
  void charge() {}

  @override
  void work() {}
}
