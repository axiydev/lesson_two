/*
Created by Axmadjon Isaqov on 09:54:37 20.06.2022
© 2022 
*/

import 'dart:async';

///[@axi_dev]

enum ServerState { INITIAL, LOADING, SUCCESS, ERROR, ERROR404 }

void main(List<String> args) {
  StreamController myController = StreamController();
  Stream myStream = Stream.periodic(Duration(seconds: 1), (index) => index);

  ServerState status = ServerState.INITIAL;
  myController.stream.listen((index) {
    if (status == ServerState.INITIAL) {
      print("initial");
      status = ServerState.LOADING;
    }
    if (status == ServerState.SUCCESS) {
      print('success');
      print(index);
      if (index == 15) {
        status = ServerState.ERROR;
      }
    }
    if (status == ServerState.LOADING) {
      print('loading...');
      if (index == 5) {
        status = ServerState.SUCCESS;
      }
    }

    if (status == ServerState.ERROR) {
      print("error");
      myController.close();
    }
  });

  myStream.listen((index) {
    if (!myController.isClosed) {
      myController.sink.add(index);
    }
  });
}
