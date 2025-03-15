import 'package:flutter/material.dart';

import '../utils/color_manager.dart';
import '../utils/styles_manager.dart';

class CustomTextField extends StatelessWidget {
  String hint;
  TextInputType textInputType;
  CustomTextField({super.key, required this.hint,required this.textInputType});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: ColorManager.white),
      cursorColor: ColorManager.primary,
      keyboardType: textInputType,
      decoration: InputDecoration(
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: ColorManager.primary)),
          prefixStyle: TextStyle(color: ColorManager.white),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: ColorManager.white)),
          hintText: hint,
          hintStyle: getMediumStyle(color: ColorManager.white)),
    );
  }
}
