
import 'package:amplify/ColorHelper/colorHelper.dart';
import 'package:amplify/CommonMethods/FormValidator.dart';
import 'package:amplify/FontsHelper/fontHelper.dart';
import 'package:amplify/ImageHelper/imageHelper.dart';
import 'package:amplify/Language/constants.dart';
import 'package:amplify/TextStyleHelper/textStyleHelper.dart';
import 'package:amplify/UI/SignUpPage/signupWithEmailPageController.dart';
import 'package:amplify/inputDecorationHelper/inputDecorationHelper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupPageOne extends StatefulWidget
{
  const SignupPageOne({Key? key}) : super(key: key);

  @override
  SignupPageOneState createState() => SignupPageOneState();
}

class SignupPageOneState extends State<SignupPageOne> {


  final SignupWithEmailPageController signupWithEmailPageController = Get.put(SignupWithEmailPageController());




  @override
  Widget build(BuildContext context)
  {
    return Obx((){

      return SingleChildScrollView(child: Form(key:signupWithEmailPageController.formKey,child:Column(crossAxisAlignment:CrossAxisAlignment.start,children: [
        Container(padding:const EdgeInsets.only(bottom:8,left:12,right:8,top:16),child: Text(Constants.whatsYourEmailAddress.tr,style:TextStyleHelper.textStyle(hintStyle:ColorHelper.blackColor,fontSize:14,fontFamily:FontManager.poppinsRegular,fontWeight:FontWeight.bold))),
        Container(padding:const EdgeInsets.all(8),child:TextFormField(
          validator:FormValidator.validateEmail,
          keyboardType:TextInputType.emailAddress,
          controller: signupWithEmailPageController.emailAddressTC,
          style:  TextStyle(color: ColorHelper.greyColor),
          decoration:InputDecorationHelper.textFieldStyle(hintText:Constants.email.tr ,labelText:Constants.email.tr,borderSideFillColor:ColorHelper.greyColor,fillColor:ColorHelper.fillColor,hintStyle:ColorHelper.hintColor),
          onFieldSubmitted: (value) {},
          // validator: FormValidator.validateUserName
        )),
        Container(padding:const EdgeInsets.only(bottom:8,left:12,right:8,top:8),child:  Text(Constants.whatsYourGender.tr,style:TextStyleHelper.textStyle(hintStyle:ColorHelper.blackColor,fontSize:14,fontFamily:FontManager.poppinsRegular,fontWeight:FontWeight.bold))),
        Container(padding:const EdgeInsets.all(8),child:
        Row(children:[
          TextButton(onPressed:(){

            signupWithEmailPageController.updateGenderIndex(0);

            // setState(() {
            //   genderIndex = 0;
            // });

          }, child:Row(children:[ Text(Constants.male.tr,style:TextStyle(color:ColorHelper.blackColor)),const SizedBox(width:8),SizedBox(height:20,width:20,child: Image.asset(signupWithEmailPageController.genderIndex.value == 0 ? ImageHelper.check:ImageHelper.uncheck))])),
          TextButton(onPressed:(){

            signupWithEmailPageController.updateGenderIndex(1);

            // setState(() {
            //   genderIndex = 1;
            // });


          }, child:Row(children:[ Text(Constants.female.tr,style:TextStyle(color:ColorHelper.blackColor)),const SizedBox(width:8),SizedBox(height:20,width:20,child: Image.asset(signupWithEmailPageController.genderIndex.value == 1 ? ImageHelper.check:ImageHelper.uncheck))])),
          TextButton(onPressed:(){

            signupWithEmailPageController.updateGenderIndex(2);

            // setState(() {
            //   genderIndex = 2;
            // });

          }, child:Row(children:[ Text(Constants.nA.tr,style:TextStyle(color:ColorHelper.blackColor)),const SizedBox(width:8),SizedBox(height:20,width:20,child: Image.asset(signupWithEmailPageController.genderIndex.value == 2 ? ImageHelper.check:ImageHelper.uncheck))]))
        ])),
        Container(padding:const EdgeInsets.only(bottom:8,left:12,right:8,top:8),child:  Text(Constants.howMatchDoYouTrain.tr,style:TextStyleHelper.textStyle(hintStyle:ColorHelper.blackColor,fontSize:14,fontFamily:FontManager.poppinsRegular,fontWeight:FontWeight.bold))),
        Container(padding:const EdgeInsets.all(8),child:DropdownButtonFormField<String>(
          decoration:InputDecorationHelper.textFieldStyle(hintText:Constants.trainingDuration.tr ,labelText:Constants.trainingDuration.tr,borderSideFillColor:Colors.grey,fillColor:const Color.fromRGBO(245,245,245,0.8),hintStyle:ColorHelper.hintColor),
          value: signupWithEmailPageController.trainingDurationController.value,
          items: [Constants.onceAWeek.tr,Constants.twiceAWeek.tr,Constants.thriceAWeek.tr]
              .map((label) => DropdownMenuItem(
            child: Text(label),
            value: label,
          ))
              .toList(),
          hint:  Text(Constants.trainingDuration.tr),
          onChanged: (value) {

            signupWithEmailPageController.updateTrainingDuration(value!);

          },
        )),
      ])));
    }) ;
  }
}
