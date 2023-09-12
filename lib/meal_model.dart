import 'package:flutter/material.dart';

class MealModel {
  String? image;
  String? name;
  String? price;
  List<Content>? content;
  MealModel(Map map) {
    image = map["image"];
    name = map["name"];
    price = map["price"];
    List<Map> data = map["content"];
    content = data.map((e) => Content(e)).toList();
  }
}

class Content {
  String? name;
  int? price;
  Content(Map map) {
    name = map["name"];
    price = map["price"];
  }
}
