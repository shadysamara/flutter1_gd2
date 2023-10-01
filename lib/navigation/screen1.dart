import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/navigation/nav_provider.dart';
import 'package:flutter_application_2/navigation/screen2.dart';
import 'package:provider/provider.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<NavProvider>(builder: (context, provider, child) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Login"),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                    hintText: "UserName",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                controller: provider.userNameController,
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                controller: provider.passwordController,
              ),
              Spacer(),
              CheckboxListTile(
                  title: Text("Accepts  the conditions and terms"),
                  value: provider.isAccepted,
                  onChanged: (v) {
                    provider.changeIsAcccepted();
                  }),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  child: Text("Sign In"),
                  onPressed: () {
                    provider.checkLogin();
                  },
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
