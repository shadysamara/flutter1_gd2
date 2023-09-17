import 'package:flutter/material.dart';
import 'package:flutter_application_2/assignemt_solution.dart';
import 'package:flutter_application_2/full_example/posts_Screen.dart';
import 'package:flutter_application_2/resturant_screen.dart';

void main() {
  List<Map> data = [
    {
      "image_url":
          "https://images.unsplash.com/photo-1692682905358-c1a0ee81b72e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2940&q=80",
      "name": "Cold Narure",
      "city": "gaza"
    },
    {
      "image_url":
          "https://images.unsplash.com/photo-1682695799561-033f55f75b25?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2940&q=80",
      "name": "Hills Narure",
      "city": "Palestine"
    }
  ];
  runApp(MaterialApp(home: PostsScreen()));
}

class PostWidget extends StatelessWidget {
  String imageUrl;
  String name;
  String city;
  PostWidget(this.imageUrl, this.name, this.city);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [Image.network(imageUrl), Text(name), Text(city)],
    );
  }
}
