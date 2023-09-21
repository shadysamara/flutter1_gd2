import 'package:flutter/material.dart';
import 'package:flutter_application_2/full_example/data.dart';
import 'package:flutter_application_2/full_example/post_model.dart';
import 'package:flutter_application_2/full_example/post_widget.dart';

class FavouritePostsScreen extends StatefulWidget {
  FavouritePostsScreen();

  @override
  State<FavouritePostsScreen> createState() => _FavouritePostsScreenState();
}

class _FavouritePostsScreenState extends State<FavouritePostsScreen> {
  updateScreen() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
              itemCount: postsModelList
                  .where((element) => element.isLiked == true)
                  .length,
              itemBuilder: (x, i) {
                return PostWidget(
                    postsModelList
                        .where((element) => element.isLiked == true)
                        .toList()[i],
                    updateScreen);
              }),
        ),
      ],
    );
  }
}
