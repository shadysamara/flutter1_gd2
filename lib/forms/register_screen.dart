import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/forms/form_provider.dart';
import 'package:flutter_application_2/forms/widgets/custom_checkbox.dart';
import 'package:flutter_application_2/forms/widgets/custom_textfield.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share.dart';
import 'package:url_launcher/url_launcher.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Register Screen"),
      ),
      body: Consumer<FormProvider>(builder: (context, pr, w) {
        return Form(
          key: pr.formKey,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                CustomTextfield(
                    saveFunction: pr.saveName,
                    hintText: "User Name",
                    validationFunction: pr.validateUserName),
                CustomTextfield(
                    saveFunction: pr.saveEmail,
                    hintText: "User Email",
                    validationFunction: pr.validateUserEmail),
                CustomTextfield(
                    saveFunction: pr.savePassword,
                    isObsecure: false,
                    hintText: "User Password",
                    validationFunction: pr.validatePassword),
                Container(
                  child: Column(
                    children: [
                      Text(
                          "This is my words which i want to share with others"),
                      IconButton(
                          onPressed: () {
                            Share.share(
                                "This is my words which i want to share with others");
                          },
                          icon: Icon(Icons.share)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.whatsapp))
                    ],
                  ),
                ),
                const Spacer(),
                CustomCheckbox(),
                ElevatedButton(
                    onPressed: () {
                      bool? result = pr.formKey.currentState?.validate();
                      // if the resukt is true then give me all textfields values
                      if (result == true) {
                        // print all values
                      }
                    },
                    child: Text("Register"))
              ],
            ),
          ),
        );
      }),
    );
  }
}
