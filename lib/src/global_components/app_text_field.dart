import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String? hintText, initialValue;
  final Function(String?)? onSaved, validator;
  final int maxLines;
  const AppTextField({
    Key? key,
    this.hintText,
    this.onSaved,
    this.maxLines = 1,
    this.initialValue,
    this.validator,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      maxLines: maxLines,
      initialValue: initialValue,
      validator: validator as String? Function(String?)?,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        isDense: true,
        hintText: hintText,
      ),
    );
  }
}
