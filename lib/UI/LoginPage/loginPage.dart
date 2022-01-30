
import 'package:amplify/ButtonBoxDecorationHelper/buttonBoxDecorationHelper.dart';
import 'package:amplify/ColorHelper/colorHelper.dart';
import 'package:amplify/CommonMethods/FormValidator.dart';
import 'package:amplify/FontsHelper/fontHelper.dart';
import 'package:amplify/ImageHelper/imageHelper.dart';
import 'package:amplify/Language/constants.dart';
import 'package:amplify/TextStyleHelper/textStyleHelper.dart';
import 'package:amplify/inputDecorationHelper/inputDecorationHelper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'loginPageController.dart';

class LoginPage extends StatefulWidget
{
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
{


  final LoginPageController loginPageController = Get.put(LoginPageController());


  buildLanguageDialog(BuildContext context)
  {
    showDialog(context: context,
        builder: (builder){
          return AlertDialog(
            title:  Text(Constants.chooseYourLanguage.tr),
            content: SizedBox(
              width: double.maxFinite,
              child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(child: Text(loginPageController.locale[index]['name']),onTap: ()
                      {
                        print(loginPageController.locale[index]['name']);
                        loginPageController.updateLanguage(loginPageController.locale[index]['locale']);
                      },),
                    );
                  }, separatorBuilder: (context,index){
                return  Divider(
                  color: ColorHelper.blueColor,
                );
              }, itemCount: loginPageController.locale.length
              ),
            ),
          );
        }
    );
  }

  @override
  Widget build(BuildContext context)
  {


    return Scaffold(appBar:AppBar(backgroundColor:ColorHelper.blackColor,actions: [
      TextButton(onPressed: ()
    {
      buildLanguageDialog(context);
    }, child: Column(
      children: [
        SizedBox(height:30,child: Image.asset(ImageHelper.translate)),
      ],
    ))]),body:Form(key:loginPageController.formKey,child:Container(child:Center(child:Column(
      mainAxisAlignment:MainAxisAlignment.center,
      children:  [
        SizedBox(height:80,child: Image.asset(ImageHelper.logoImageIcon)),
        const SizedBox(height:10),
        SizedBox(
          width:Get.width - 16,
          child: TextFormField(
            keyboardType:TextInputType.emailAddress,
            controller: loginPageController.emailAddressTC,
            validator:FormValidator.validateEmail,
            style:TextStyleHelper.textStyle(hintStyle:ColorHelper.whiteColor,fontSize:14,fontFamily:FontManager.poppinsRegular,fontWeight:FontWeight.normal),
            decoration:InputDecorationHelper.textFieldStyle(hintText:Constants.usernameOrEmailAddress.tr ,labelText:Constants.usernameOrEmailAddress.tr,borderSideFillColor:ColorHelper.greyColor,fillColor:ColorHelper.blackColor,hintStyle:ColorHelper.greyColor),
            // validator: FormValidator.validateUserName
          ),
        ),
        const SizedBox(height:10),
        SizedBox(
          width:Get.width - 16,
          child: TextFormField(
            validator:FormValidator.validatePassword,
            // enableInteractiveSelection: false,
            keyboardType:TextInputType.visiblePassword,
            controller: loginPageController.passwordTC,
            style: TextStyleHelper.textStyle(hintStyle:ColorHelper.whiteColor,fontSize:14,fontFamily:FontManager.poppinsRegular,fontWeight:FontWeight.normal),
            decoration:InputDecorationHelper.textFieldStyle(hintText:Constants.password.tr ,labelText:Constants.password.tr,borderSideFillColor:ColorHelper.greyColor,fillColor:ColorHelper.blackColor,hintStyle:ColorHelper.greyColor),
            onFieldSubmitted: (value) {},
            // validator: FormValidator.validateUserName
          ),
        ),
        SizedBox(
            width:Get.width - 16,
          child: Row(children:[
            Expanded(child:Container()),TextButton(onPressed:(){

          }, child:Text(Constants.forgottenPassword.tr,style:TextStyleHelper.textStyle(hintStyle:ColorHelper.appThemeColor,fontSize:14,fontFamily:FontManager.poppinsRegular,fontWeight:FontWeight.w500)))]),
        ),
        InkWell(onTap:(){

          loginPageController.loginValidation();


        },child:SizedBox(child:Container(child: Center(child:Text(Constants.lOGIn.tr,style:TextStyleHelper.textStyle(hintStyle:ColorHelper.blackColor,fontSize:14,fontFamily:FontManager.poppinsRegular,fontWeight:FontWeight.bold))),decoration:
        ButtonBoxDecorationHelper.textStyle(color: ColorHelper.appThemeColor),
        ),height:42,width:Get.width - 16)),
        const SizedBox(height:10),
        Center(child:Row(mainAxisAlignment:MainAxisAlignment.center,children:[Image.asset(ImageHelper.facebookIcon,width:32,height:32),const SizedBox(width:4), Text(Constants.continueWithFacebook.tr,style:TextStyleHelper.textStyle(hintStyle:ColorHelper.whiteColor,fontSize:14,fontFamily:FontManager.poppinsRegular,fontWeight:FontWeight.normal))])),
        const SizedBox(height:10),
        Center(child:Row(mainAxisAlignment:MainAxisAlignment.center,children:[Image.asset(ImageHelper.googleIcon,width:32,height:32),const SizedBox(width:4), Text(Constants.continueWithGoogle.tr,style:TextStyleHelper.textStyle(hintStyle:ColorHelper.whiteColor,fontSize:14,fontFamily:FontManager.poppinsRegular,fontWeight:FontWeight.normal))])),
        const SizedBox(height:20),
        Divider(height: 1.0,color:ColorHelper.appThemeColor),
        const SizedBox(height:40),
        Center(child:InkWell(onTap:(){

          loginPageController.signUp();


        },child:Row(mainAxisAlignment:MainAxisAlignment.center,children: [Text(Constants.doNotHaveAnAccount.tr,style:TextStyleHelper.textStyle(hintStyle:ColorHelper.whiteColor,fontSize:14,fontFamily:FontManager.poppinsRegular,fontWeight:FontWeight.normal)),const SizedBox(width:4),Text(Constants.signUp.tr,style:TextStyleHelper.textStyle(hintStyle:ColorHelper.appThemeColor,fontSize:14,fontFamily:FontManager.poppinsRegular,fontWeight:FontWeight.bold))]))),

      ],
    )),color:ColorHelper.blackColor)));
  }
}
