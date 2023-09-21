import 'package:flutter/material.dart';
import 'package:flutter_application_2/full_example/data.dart';
import 'package:flutter_application_2/full_example/favourite_post_screen.dart';
import 'package:flutter_application_2/full_example/post_model.dart';
import 'package:flutter_application_2/full_example/posts_Screen.dart';
import 'package:flutter_application_2/main.dart';

class SocialHomePage extends StatefulWidget {
  Function function;
  SocialHomePage(this.function);
  @override
  State<SocialHomePage> createState() => _SocialHomePageState();
}

class _SocialHomePageState extends State<SocialHomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Page"),
        actions: [
          Switch(
              value: Utilities.isDark,
              onChanged: (v) {
                Utilities.isDark = !Utilities.isDark;
                widget.function();
              })
        ],
      ),
      body: PageView(children: [PostsScreen(), FavouritePostsScreen()]),
    );
  }
}
