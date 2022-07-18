import 'package:my_library/core/dog_model.dart';
import 'package:my_library/core/src.dart';
import 'models/pdp_model.dart';
import 'sevice/messanger.dart';

@Dog(breed: "puppy", age: 4, color: "White")
void play() {
  print("Im playing");
}

void main(List<String> args) {
  sendMessage();
  getMessage();
  final auth = Auth();

  auth.register("Axmadjon");

  final myDog = Dog(breed: "Puppy", age: 3);
  print(myDog.breed);

  learn();
  think();
  play();
}
