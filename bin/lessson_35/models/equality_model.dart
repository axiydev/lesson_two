import 'package:equatable/equatable.dart';
import 'package:mockito/annotations.dart';

class Timer {
  const Timer();
}


class Counter extends Timer with EquatableMixin {
  final int? initialValue;
  final bool? wasIncremented;

  const Counter({this.initialValue, this.wasIncremented});

  @override
  List<Object?> get props => [initialValue, wasIncremented];
}
