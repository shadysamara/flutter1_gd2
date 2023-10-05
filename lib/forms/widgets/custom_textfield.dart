import 'package:flutter/material.dart';

typedef String? ValidationFunction(String? v);
typedef void SaveFunction(String? v);

class CustomTextfield extends StatelessWidget {
  final String hintText;
  final ValidationFunction validationFunction;
  final SaveFunction saveFunction;
  final bool isObsecure;
  const CustomTextfield(
      {Key? key,
      required this.hintText,
      required this.validationFunction,
      required this.saveFunction,
      this.isObsecure = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        onSaved: saveFunction,
        obscureText: isObsecure,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
            hintText: hintText,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
        validator: validationFunction,
      ),
    );
  }
}
//The argument type 'Function' can't be assigned to the parameter type 'String? Function(String?)?'
