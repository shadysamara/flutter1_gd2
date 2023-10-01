import 'package:flutter/material.dart';

class AppRouter {
  static GlobalKey<NavigatorState> navKey = GlobalKey();
  static goToScreen(Widget screen) {
    Navigator.of(navKey.currentContext!)
        .push(MaterialPageRoute(builder: (context) {
      return screen;
    }));
    // code for navigation to screen
  }

  static goToScreenWithReplacement(Widget screen) {
    navKey.currentState?.pushReplacement(MaterialPageRoute(builder: (context) {
      return screen;
    }));
  }

  static goBackFromCurrentScreen() {
    navKey.currentState?.pop();
  }
}
