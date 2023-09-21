import 'package:flutter/material.dart';
import 'package:flutter_application_2/full_example/data.dart';
import 'package:flutter_application_2/full_example/post_model.dart';
import 'package:flutter_application_2/full_example/post_widget.dart';

class PostsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: postsModelList.length,
        itemBuilder: (x, i) {
          return PostWidget(postsModelList[i]);
        });
  }
}
