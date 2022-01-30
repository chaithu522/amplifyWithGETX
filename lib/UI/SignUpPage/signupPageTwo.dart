import 'package:amplify/ColorHelper/colorHelper.dart';
import 'package:amplify/CommonMethods/validation_item.dart';
import 'package:amplify/FontsHelper/fontHelper.dart';
import 'package:amplify/Language/constants.dart';
import 'package:amplify/TextStyleHelper/textStyleHelper.dart';
import 'package:amplify/UI/SignUpPage/signupWithEmailPageController.dart';
import 'package:amplify/inputDecorationHelper/inputDecorationHelper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupPageTwo extends StatefulWidget
{
  const SignupPageTwo({Key? key}) : super(key: key);

  @override
  SignupPageTwoState createState() => SignupPageTwoState();
}

class SignupPageTwoState extends State<SignupPageTwo> with TickerProviderStateMixin {


  final SignupWithEmailPageController signupWithEmailPageController = Get.put(SignupWithEmailPageController());


  Stack validationStack()
  {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: <Widget>[
        Stack(
          alignment: Alignment.bottomRight,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ValidationItem(Constants.minimumOf8Characters.tr, signupWithEmailPageController.eightChars.value),
                const SizedBox(height:1),
                ValidationItem(Constants.aCapitalLetter.tr, signupWithEmailPageController.capitalCaseChar.value),
                const SizedBox(height:1),
                ValidationItem(Constants.aLowercaseLetter.tr, signupWithEmailPageController.lowerCaseChar.value),
                const SizedBox(height:1),
                ValidationItem(Constants.aNumber.tr, signupWithEmailPageController.number.value),
                const SizedBox(height:1),
                ValidationItem(Constants.bothBoxesMatch.tr,signupWithEmailPageController.bothEqual.value),
                // ValidationItem("1 special character", specialChar),
                // SizedBox(height:1),



              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Transform.scale(
                scale: signupWithEmailPageController.fabScale!.value,
                child:  Card(
                  shape: CircleBorder(),
                  color:ColorHelper.greenColor,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.check,
                      color:ColorHelper.whiteColor,
                    ),
                  ),
                ),
              ),
            )
          ],
        )
      ],
    );
  }


  @override
  void initState() {
    // TODO: implement initState




    super.initState();
  }




  @override
  Widget build(BuildContext context)
  {
    return  SingleChildScrollView(child:Obx((){
      return Column(crossAxisAlignment:CrossAxisAlignment.start,children: [
        Container(padding:const EdgeInsets.only(bottom:8,left:12,right:8,top:16),child: Text(Constants.chooseAPassword.tr,style: TextStyleHelper.textStyle(hintStyle:ColorHelper.blackColor,fontSize:14,fontFamily:FontManager.poppinsRegular,fontWeight:FontWeight.bold))),
        Container(padding:const EdgeInsets.all(8),child:TextFormField(

          keyboardType:TextInputType.visiblePassword,
          controller: signupWithEmailPageController.passwordTC,
          style:  TextStyleHelper.textStyle(hintStyle:ColorHelper.greyColor,fontSize:14,fontFamily:FontManager.poppinsRegular,fontWeight:FontWeight.bold),
          decoration:InputDecorationHelper.textFieldStyle(hintText:Constants.password.tr ,labelText:Constants.password.tr,borderSideFillColor:ColorHelper.greyColor,fillColor:ColorHelper.fillColor,hintStyle:ColorHelper.hintColor),
          onFieldSubmitted: (value) {},
          // validator: FormValidator.validateUserName
        )),
        Container(padding:const EdgeInsets.all(8),child:TextFormField(

          keyboardType:TextInputType.visiblePassword,
          controller:signupWithEmailPageController.confirmPasswordTC,
          style:TextStyleHelper.textStyle(hintStyle:ColorHelper.greyColor,fontSize:14,fontFamily:FontManager.poppinsRegular,fontWeight:FontWeight.bold),
          decoration:InputDecorationHelper.textFieldStyle(hintText:Constants.confirmPassword.tr ,labelText:Constants.confirmPassword.tr,borderSideFillColor:ColorHelper.greyColor,fillColor:ColorHelper.fillColor,hintStyle:ColorHelper.hintColor),
          onFieldSubmitted: (value) {},
          // validator: FormValidator.validateUserName
        )),
        validationStack()
      ]);
    }));

  }
}