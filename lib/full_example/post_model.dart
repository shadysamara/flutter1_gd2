class PostModel {
  String? image;
  String? content;
  User? user;
  bool? isLiked;
  List<String>? comments;
  PostModel.fromMap(Map map) {
    image = map["image"];
    content = map["content"];
    isLiked = map["isFavourite"] ?? false;
    comments = map["comments"] ?? [];
    user = User(map["user"]);
  }
}

class User {
  String? imageUrl;
  String? name;
  User(Map map) {
    imageUrl = map["image"];
    name = map["name"];
  }
}
