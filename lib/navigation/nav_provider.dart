import 'package:flutter/material.dart';
import 'package:flutter_application_2/navigation/app_router.dart';
import 'package:flutter_application_2/navigation/screen2.dart';

class NavProvider extends ChangeNotifier {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String navValue = "";
  bool isAccepted = false;
  String correctUsername = "omar";
  String correctPassword = "123456";
  checkLogin() {
    String userName = userNameController.text;
    String password = passwordController.text;
    if (userName == correctUsername && password == correctPassword) {
      // navigation to screen2
      AppRouter.goToScreenWithReplacement(Screen2());
    } else {
      showDialog(
          context: AppRouter.navKey.currentContext!,
          builder: (context) {
            return AlertDialog(
              title: Text("Error"),
              content: Text("UserName or Password is incorrect"),
            );
          });
    }
  }

  changeIsAcccepted() {
    isAccepted = !isAccepted;
    notifyListeners();
  }
}
