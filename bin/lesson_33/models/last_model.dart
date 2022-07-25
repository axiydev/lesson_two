abstract class Location {
  double? lat;
  double? lng;
  Location({this.lat, this.lng});
}

class CustomLocation extends Location {
  String? taraf;
  CustomLocation({double? lat, double? lng, this.taraf})
      : super(lat: lat, lng: lng);
}

void main(List<String> args) {
  CustomLocation location = CustomLocation(lat: 34, lng: 67, taraf: 'South');
  print(location.taraf);
}
