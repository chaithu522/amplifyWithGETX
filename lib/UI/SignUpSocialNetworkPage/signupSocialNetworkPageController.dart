
import 'package:amplify/UI/SignUpPage/signupWithEmailPage.dart';
import 'package:get/get.dart';

class SignupSocialNetworkPageController extends GetxController {


  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  void moveToSignupWithEmailPage()
  {

    Get.to(() => const SignupWithEmailPage());

  }

  void moveToLoginPage()
  {

    Get.back();

  }


}