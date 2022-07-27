class Location {
  double? lat;
  double? lng;
  Location({this.lat, this.lng});
}

class CustomLocation extends Location {}

void main(List<String> args) {
  CustomLocation location = CustomLocation();
}
