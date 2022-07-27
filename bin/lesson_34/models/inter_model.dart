part 'inter_model.g.dart';

class ChildOne extends ParentThree implements ParentOne, ParentTwo {
  @override
  late String? name;
  ChildOne(this.name);

  @override
  void sleep() {
    super.sleep();
    print("$name can sleep");
  }
}
