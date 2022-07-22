class Hotel {
  String? name;
  String? id;

  static final Map<String, Hotel> _cache = {};

  Hotel({required this.id, required this.name});

  factory Hotel.fromCache({required String? name, required String? id}) {
    if (!_cache.containsKey(id)) {
      _cache[id!] = Hotel(id: id, name: name);
    }

    return _cache[id]!;
  }

  @override
  String toString() {
    return """
Name: $name
key: $id
""";
  }
}
