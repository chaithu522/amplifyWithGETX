//signupWithEmailPageController

import 'package:amplify/Language/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupWithEmailPageController extends GetxController with GetSingleTickerProviderStateMixin {


  var signupIndex = 0.obs;
  var genderIndex = 0.obs;
  TextEditingController emailAddressTC = TextEditingController();
  TextEditingController passwordTC = TextEditingController();
  TextEditingController confirmPasswordTC = TextEditingController();
  var trainingDurationController = Constants.onceAWeek.tr.obs;
  String? ratingController;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
   AnimationController? controller ;
   Animation<double>? fabScale;
  var eightChars = false.obs;
  var lowerCaseChar = false.obs;
  var capitalCaseChar = false.obs;
  var number = false.obs;
  var bothEqual = false.obs;

  // bool eightChars = false;
  // bool lowerCaseChar = false;
  // bool capitalCaseChar = false;
  // bool number = false;
  // bool bothEqual = false;


  @override
  void onInit() {
    // TODO: implement onInit


    passwordTC.addListener(()
    {

        eightChars.value = passwordTC.text.length >= 8;
        number.value = passwordTC.text.contains(RegExp(r'\d'), 0);
        lowerCaseChar.value = passwordTC.text.contains(RegExp(r'[a-z]'), 0);
        capitalCaseChar.value = passwordTC.text.contains(RegExp(r'[A-Z]'), 0);
        if(confirmPasswordTC.text.isNotEmpty == true && passwordTC.text.isNotEmpty == true)
        {
          bothEqual.value = passwordTC.text.compareTo(confirmPasswordTC.text) == 0;
        }


      if (allValid())
      {
        controller?.forward();
      } else {
        controller?.reverse();
      }

        update();
    });

    confirmPasswordTC.addListener(() {


      if(confirmPasswordTC.text.isNotEmpty == true && passwordTC.text.isNotEmpty == true)
      {
        bothEqual.value = passwordTC.text.compareTo(confirmPasswordTC.text) == 0;
      }



      update();


    });

    controller = AnimationController(vsync:this,duration: const Duration(milliseconds: 500));

    fabScale = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(parent: controller!, curve: Curves.bounceOut));

    fabScale?.addListener(()
    {

      update();
    });


    super.onInit();
  }

  @override
  void dispose() {
    // TODO: implement dispose

    formKey.currentState?.dispose();
    emailAddressTC.dispose();
    passwordTC.dispose();
    confirmPasswordTC.dispose();

    super.dispose();
  }


 void updateSignupIndex(int index)
 {
   signupIndex.value = index;
   update();
 }

  void updateGenderIndex(int index)
  {
    genderIndex.value = index;
    update();
  }

  void updateTrainingDuration(String td)
  {
    trainingDurationController.value = td;
    update();
  }


  bool allValid()
  {
    return eightChars.value && number.value && capitalCaseChar.value && lowerCaseChar.value && bothEqual.value;
  }




  void loginValidation()
  {
    if (formKey.currentState!.validate() == false && signupIndex.value == 0)
    {

    }
    else
    {

      updateSignupIndex(1);

    }

  //  updateSignupIndex(1);

  }






}