import 'package:flutter/material.dart';
import 'package:flutter_application_2/full_example/data.dart';
import 'package:flutter_application_2/full_example/post_model.dart';
import 'package:flutter_application_2/full_example/post_widget.dart';

class PostsScreen extends StatelessWidget {
  List<PostModel> convertMapsToPostmodel() {
    return postsData.map((e) => PostModel(e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("My Social Media App"),
      ),
      body: ListView.builder(
          itemCount: postsData.length,
          itemBuilder: (x, i) {
            return PostWidget(convertMapsToPostmodel()[i]);
          }),
    );
  }
}
