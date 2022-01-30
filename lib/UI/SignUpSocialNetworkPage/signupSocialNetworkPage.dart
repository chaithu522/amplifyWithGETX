

import 'package:amplify/ButtonBoxDecorationHelper/buttonBoxDecorationHelper.dart';
import 'package:amplify/ColorHelper/colorHelper.dart';
import 'package:amplify/FontsHelper/fontHelper.dart';
import 'package:amplify/ImageHelper/imageHelper.dart';
import 'package:amplify/Language/constants.dart';
import 'package:amplify/TextStyleHelper/textStyleHelper.dart';
import 'package:amplify/UI/SignUpSocialNetworkPage/signupSocialNetworkPageController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupSocialNetworkPage extends StatefulWidget
{
  const SignupSocialNetworkPage({Key? key}) : super(key: key);

  @override
  _SignupSocialNetworkPageState createState() => _SignupSocialNetworkPageState();
}

class _SignupSocialNetworkPageState extends State<SignupSocialNetworkPage>
{

  final SignupSocialNetworkPageController signupSocialNetworkPageController = Get.put(SignupSocialNetworkPageController());


    @override
    Widget build(BuildContext context)
    {
      //double width = MediaQuery. of(context). size. width ;

      return Scaffold(appBar:AppBar(backgroundColor:ColorHelper.blackColor),body:Container(child:Center(child:Column(
        mainAxisAlignment:MainAxisAlignment.center,
        children:  [
          SizedBox(height:80,child: Image.asset(ImageHelper.logoImageIcon)),
          const SizedBox(height:10),
           Text(Constants.gainBackControlOfYourLife.tr,style:TextStyleHelper.textStyle(hintStyle:ColorHelper.whiteColor,fontSize:14,fontFamily:FontManager.poppinsRegular,fontWeight:FontWeight.bold)),
          const SizedBox(height:10),
          SizedBox(child:Container(child: Center(child:Row(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              Image.asset(ImageHelper.facebookIcon,width:32,height:32),
              const SizedBox(width:4),
               Text(Constants.signUpWithFacebook.tr,style:TextStyleHelper.textStyle(hintStyle:ColorHelper.whiteColor,fontSize:14,fontFamily:FontManager.poppinsRegular,fontWeight:FontWeight.bold)),
            ],
          )),decoration:ButtonBoxDecorationHelper.textStyle(color: ColorHelper.fbColor)
          ),height:42,width:Get.width - 16),
          const SizedBox(height:10),
          SizedBox(child:Container(child: Center(child:Row(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              Image.asset(ImageHelper.googleIcon,width:32,height:32),
              const SizedBox(width:4),
               Text(Constants.sIgnUpWithGoogle.tr,style:TextStyleHelper.textStyle(hintStyle:ColorHelper.blackColor,fontSize:14,fontFamily:FontManager.poppinsRegular,fontWeight:FontWeight.bold)),
            ],
          )),decoration:ButtonBoxDecorationHelper.textStyle(color: ColorHelper.whiteColor)
          ),height:42,width:Get.width - 16),
          const SizedBox(height:30),
          InkWell(onTap:(){

            signupSocialNetworkPageController.moveToSignupWithEmailPage();

            // Navigator.push(context,MaterialPageRoute(builder: (context) => const SignupWithEmailPage()));

          },child:Text(Constants.signUpWithEmailAddress.tr,style:TextStyleHelper.textStyle(hintStyle:ColorHelper.appThemeColor,fontSize:14,fontFamily:FontManager.poppinsRegular,fontWeight:FontWeight.bold))),
          const SizedBox(height:40),
          Divider(height: 1.0,color:ColorHelper.appThemeColor),
          const SizedBox(height:40),
          Center(child:InkWell(onTap:(){

            signupSocialNetworkPageController.moveToLoginPage();


          },child:Row(mainAxisAlignment:MainAxisAlignment.center,children: [ Text(Constants.alreadyHaveAnAccount.tr,style:TextStyleHelper.textStyle(hintStyle:ColorHelper.whiteColor,fontSize:14,fontFamily:FontManager.poppinsRegular,fontWeight:FontWeight.normal)),const SizedBox(width:4),Text(Constants.signIn.tr,style:TextStyleHelper.textStyle(hintStyle:ColorHelper.appThemeColor,fontSize:14,fontFamily:FontManager.poppinsRegular,fontWeight:FontWeight.bold))]))),
        ],
      )),color:ColorHelper.blackColor));
    }



  }

