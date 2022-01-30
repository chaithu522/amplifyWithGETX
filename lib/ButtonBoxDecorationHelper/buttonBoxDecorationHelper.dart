import 'package:flutter/material.dart';

class ButtonBoxDecorationHelper
{


  static BoxDecoration textStyle({Color color = Colors.white})
  {
    return BoxDecoration(
      color:color,
      // border: Border.all(
      //     width: .0
      // ),
      borderRadius: const BorderRadius.all(
          Radius.circular(25.0) //                 <--- border radius here
      ),
    );
  }


}