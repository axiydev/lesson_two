enum Server { Dev, Dep }

void main(List<String> args) {
  var server = AppServer();
  print(server.workingServer());
  server.isTester = false;
  print(server.workingServer());
}

class AppServer {
  var isTester = true;
  Server get getServer {
    if (isTester) return Server.Dev;
    return Server.Dep;
  }

  String? workingServer() {
    Server status = getServer;
    switch (status) {
      case Server.Dev:
        return "localhost";
      case Server.Dep:
        return 'pdp.uz';
      default:
        return "other";
    }
  }
}
