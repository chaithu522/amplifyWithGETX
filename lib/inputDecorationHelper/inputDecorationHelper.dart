import 'package:flutter/material.dart';

class InputDecorationHelper
{
  static InputDecoration textFieldStyle({String labelText="",String hintText="",Color fillColor = Colors.white,Color borderSideFillColor = Colors.white,Color hintStyle = Colors.white})
  {
    return InputDecoration(
      border: const OutlineInputBorder(),
      focusedBorder: OutlineInputBorder(
        borderSide:
        BorderSide(color:borderSideFillColor /*ColorHelper.whiteColor*/, width: 1.0),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide:
        BorderSide(color:borderSideFillColor /*ColorHelper.whiteColor*/, width: 1.0),
      ),
      labelText:labelText,
      fillColor:fillColor,
      filled: true,
      labelStyle: TextStyle(color:hintStyle /*ColorHelper.whiteColor*/),
      hintText: hintText,
      hintStyle: TextStyle(color:hintStyle /*ColorHelper.whiteColor*/),
      contentPadding: const EdgeInsets.symmetric(
          vertical: 10.0, horizontal: 10.0),
    );
  }

}
