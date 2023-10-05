import 'package:flutter/material.dart';
import 'package:string_validator/string_validator.dart';

class FormProvider {
  GlobalKey<FormState> formKey = GlobalKey();
  String name = "";
  String email = "";
  String password = "";
  void saveName(String? value) {
    name = value ?? '';
  }

  void saveEmail(String? value) {
    email = value ?? '';
  }

  void savePassword(String? value) {
    password = value ?? '';
  }

  String? validateUserName(String? value) {
    if (value == null || value.isEmpty) {
      return "required field";
    } else {
      return null;
    }
  }

  String? validateUserEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "required field";
    } else if (!isEmail(value)) {
      return "incorrect email syntax, it should contain @";
    } else {
      return null;
    }
  }

  String? validatePassword(String? value) {
    /*
    r'^
  (?=.*[A-Z])       // should contain at least one upper case
  (?=.*[a-z])       // should contain at least one lower case
  (?=.*?[0-9])      // should contain at least one digit
  (?=.*?[!@#\$&*~]) // should contain at least one Special character
  .{8,}             // Must be at least 8 characters in length  
$
    */
    List<String> errors = [];
    RegExp passwordReg =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    if (value == null || value.isEmpty) {
      return "required field";
    } else if (!passwordReg.hasMatch(value)) {
      if (!RegExp(r'[A-Z]').hasMatch(value)) {
        errors.add("you have to enter one upper case character at least");
      }
      if (!RegExp(r'[a-z]').hasMatch(value)) {
        errors.add("you have to enter one lower case character at least");
      }
      if (!RegExp(r'[0-9]').hasMatch(value)) {
        errors.add("you have to enter one digit at least");
      }
      if (!RegExp(r'[!@#\$&*~]').hasMatch(value)) {
        errors.add("you have to enter one symbol at least");
      }
      if (value.length < 8) {
        errors.add("you have to enter 8 characters at least");
      }
      if (errors.isNotEmpty) {
        return errors.fold<String>(
            '', (previousValue, element) => previousValue + "\n" + element);
      }
    }
  }
}
