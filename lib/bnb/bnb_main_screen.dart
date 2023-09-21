import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/bnb/bnb_sub_screens.dart/favourite_Screen.dart';
import 'package:flutter_application_2/bnb/bnb_sub_screens.dart/home_screen.dart';

class BNBMainScreen extends StatefulWidget {
  @override
  State<BNBMainScreen> createState() => _BNBMainScreenState();
}

class _BNBMainScreenState extends State<BNBMainScreen> {
  PageController pageController = PageController();

  int index = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (i) {
          index = i;
          setState(() {});
          pageController.animateToPage(i,
              duration: Duration(seconds: 1), curve: Curves.linear);
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Favourite"),
        ],
      ),
      appBar: AppBar(
        title: Text("Bnb MainScreen"),
      ),
      body: PageView(
          controller: pageController, children: [HomePage(), FavouritePage()]),
    );
  }
}
