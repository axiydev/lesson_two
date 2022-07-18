/*
Created by Axmadjon Isaqov on 09:14:12 01.07.2022
© 2022 
*/

///[@axi_dev]
void main(List<String> args) {
  List<int?> myResult = getListValue<int>(56);
  print(myResult.runtimeType);
  print(getListValue<String>('Salom'));
  var hello = 'hello';
  print("\x1B[32m $hello\x1B[0m");
}

List<T?> getListValue<T>(T? value) {
  List<T?> myList = [];
  myList.add(value);
  return myList;
}
