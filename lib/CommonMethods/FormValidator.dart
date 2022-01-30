



import 'package:amplify/Language/constants.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
//import 'package:get/get_utils/src/extensions/internacionalization.dart';

class FormValidator {

  static String? validateEmail(String? email)
  {
    if (email?.isEmpty == true) {
      return  Constants.usernameOrEmailAddress.tr;
    }
    String pattern =
        r'^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$';
    RegExp regExp = RegExp(pattern);
    // RegExp regExp = RegExp(pattern);
    if (!regExp.hasMatch(email ?? ''))
    {
      return Constants.peAVE.tr;
    }
    return null;
  }

  static String? validatePassword(String? value)
  {
    if (value?.isEmpty == true) return Constants.pep.tr;
    if (value!.length < 8) return Constants.pmca8c.tr;
    return null;
  }


}
