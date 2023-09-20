class Category {
  int? id;
  String? name;
  List<Product>? products;
  Category(Map map) {
    id = map["id"];
    name = map["name"];
    List productsList = map["products"];
    products = productsList.map((e) => Product(e)).toList();
  }
}

class Product {
  String? name;
  int? id;
  String? image;
  num? price;
  Product(Map map) {
    name = map["name"];
    id = map["id"];
    image = map["image"];
    price = map["price"];
  }
}
