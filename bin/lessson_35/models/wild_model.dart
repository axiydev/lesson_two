class Wild {
  void getMessage(){
    print("Wild");
  }
}

mixin Animal{
  void getMessage(){
    print("Animal");
  }
}

class Lion with Animal implements Wild{
}

void main(){
  Lion lion=Lion();
  lion.getMessage();
}