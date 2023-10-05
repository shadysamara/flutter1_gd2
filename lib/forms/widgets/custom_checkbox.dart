import 'package:flutter/material.dart';

class CustomCheckbox extends FormField<bool> {
  CustomCheckbox()
      : super(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (v) {
              if (v != true) {
                return "You have to accept conditions and terms first";
              }
            },
            initialValue: false,
            builder: (FormFieldState<bool> state) {
              return CheckboxListTile(
                  subtitle: state.hasError
                      ? Text(
                          state.errorText ?? '',
                          style: TextStyle(color: Colors.red),
                        )
                      : null,
                  title: Text("Accept Conditions And Terms"),
                  value: state.value,
                  onChanged: state.didChange);
            });
}
