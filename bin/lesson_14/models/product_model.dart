class Product {
  String? id;
  String? name;
  Product(this.id, this.name);

  @override
  bool operator ==(Object? other) =>
      other is Product &&
      ((other.id == id && other.name == name) || identical(this, other));

  @override
  // TODO: implement hashCode
  int get hashCode => super.hashCode;
}
