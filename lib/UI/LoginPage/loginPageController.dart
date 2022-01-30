
import 'package:amplify/UI/SignUpSocialNetworkPage/signupSocialNetworkPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPageController extends GetxController {
  TextEditingController emailAddressTC = TextEditingController();
  TextEditingController passwordTC = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final List locale =[
    {'name':'ENGLISH','locale': const Locale('en','US')},
    {'name':'తెలుగు','locale': const Locale('telugu','IN')},
    {'name':'हिंदी','locale': const Locale('hindi','IN')},
  ];

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void dispose() {
    passwordTC.dispose();
    emailAddressTC.dispose();

    formKey.currentState?.dispose();

    // TODO: implement dispose
    super.dispose();
  }

  //Get.to(const SignupSocialNetworkPage());

  void signUp()
  {

    Get.to(() => const SignupSocialNetworkPage());

  }

  void loginValidation()
  {
    if (formKey.currentState!.validate())
    {
      // use the information provided
    }
    else
    {

    }


  }


  updateLanguage(Locale locale)
  {
    Get.back();
    Get.updateLocale(locale);
  }

}