import 'package:flutter/material.dart';

class ButtonBoxDecorationHelper
{


  static BoxDecoration textStyle({Color color = Colors.white})
  {
    return BoxDecoration(
      color:color,
      borderRadius: const BorderRadius.all(
          Radius.circular(25.0) //                 <--- border radius here
      ),
    );
  }


}