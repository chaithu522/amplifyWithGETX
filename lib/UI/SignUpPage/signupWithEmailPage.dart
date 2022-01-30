

import 'package:amplify/ButtonBoxDecorationHelper/buttonBoxDecorationHelper.dart';
import 'package:amplify/ColorHelper/colorHelper.dart';
import 'package:amplify/FontsHelper/fontHelper.dart';
import 'package:amplify/Language/constants.dart';
import 'package:amplify/TextStyleHelper/textStyleHelper.dart';
import 'package:amplify/UI/SignUpPage/signupPageOne.dart';
import 'package:amplify/UI/SignUpPage/signupPageTwo.dart';
import 'package:amplify/UI/SignUpPage/signupWithEmailPageController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupWithEmailPage extends StatefulWidget {
  const SignupWithEmailPage({Key? key}) : super(key: key);

  @override
  _SignupWithEmailPageState createState() => _SignupWithEmailPageState();
}

class _SignupWithEmailPageState extends State<SignupWithEmailPage>
{

  final SignupWithEmailPageController signupWithEmailPageController = Get.put(SignupWithEmailPageController());






  @override
  void initState() {






      // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context)
  {
    return Scaffold(bottomNavigationBar:Obx((){

      return InkWell(onTap:(){

        if(signupWithEmailPageController.signupIndex.value == 0)
        {

          signupWithEmailPageController.loginValidation();

          //next
        }
        else
        {

          //continue
        }
      },child:Container(padding:const EdgeInsets.only(bottom:8,left:8,right:8),child:Container(child: Center(child: Text(signupWithEmailPageController.signupIndex.value == 0 ? Constants.next.tr:Constants.continue1.tr,style:TextStyleHelper.textStyle(hintStyle:ColorHelper.blackColor,fontSize:14,fontFamily:FontManager.poppinsRegular,fontWeight:FontWeight.bold))),decoration: ButtonBoxDecorationHelper.textStyle(color:ColorHelper.appThemeColor)),height:42,width:Get.width - 64));
    }),appBar:AppBar(backgroundColor:ColorHelper.blackColor),body:Obx((){
      return Container(
          child:Column(
            children: [
              SizedBox(height:80,child: Row(mainAxisAlignment:MainAxisAlignment.start,children:[
                Column(
                    mainAxisAlignment:MainAxisAlignment.start,
                    crossAxisAlignment:CrossAxisAlignment.start,
                    children:[
                      Padding(
                        padding: const EdgeInsets.only(left:8),
                        child: Text(Constants.signUp.tr,style:TextStyleHelper.textStyle(hintStyle:ColorHelper.appThemeColor,fontSize:32,fontFamily:FontManager.poppinsRegular,fontWeight:FontWeight.normal)),
                      ),
                      Expanded(child:  Container(
                        padding:const EdgeInsets.only(left:8,right:8),
                        width:Get.width,
                        child: Row(
                          children: [
                            Expanded(flex:1,child:InkWell(onTap:(){


                              signupWithEmailPageController.updateSignupIndex(0);


                            },child:
                            Container(color:signupWithEmailPageController.signupIndex.value == 0 ? ColorHelper.appThemeColor:Colors.white.withOpacity(0.5),height:3))) ,
                            const SizedBox(width:8),
                            Expanded(flex:1,child:InkWell(onTap:(){

                              signupWithEmailPageController.updateSignupIndex(1);


                            },child:Container(color:signupWithEmailPageController.signupIndex.value == 1 ? ColorHelper.appThemeColor:Colors.white.withOpacity(0.5),height:3))) ,
                          ],
                        ),
                      )),
                    ]),
              ])),
              Expanded(child:Container(width:Get.width,child:signupWithEmailPageController.signupIndex.value == 0 ?
               const SignupPageOne():
              const SignupPageTwo(),color:ColorHelper.whiteColor))
            ],
          ),
          color:ColorHelper.blackColor);
        })
    );
  }
}
