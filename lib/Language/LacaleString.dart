import 'package:get/get.dart';

import 'constants.dart';

class LocaleString extends Translations{


  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys =>
      {
        Constants.englishUS:{
      Constants.usernameOrEmailAddress:"Username Or Email address",
      Constants.password:"Password",
      Constants.forgottenPassword:"Forgotten password?",
      Constants.lOGIn:"LOG IN",
      Constants.doNotHaveAnAccount:"Don't have an account?",
      Constants.continueWithFacebook:"Continue with Facebook",
      Constants.continueWithGoogle:"Continue with Google",
      Constants.signUp:"Sign up",
      Constants.alreadyHaveAnAccount :"Already have an account?",
      Constants.signIn :"Sign in",
      Constants.signUpWithEmailAddress :"Sign up with Email address",
      Constants.sIgnUpWithGoogle :"SIGN UP WITH GOOGLE",
      Constants.signUpWithFacebook : "SIGN UP WITH FACEBOOK",
      Constants.gainBackControlOfYourLife : "GAIN BACK CONTROL OF YOUR LIFE",
      Constants.confirmPassword : "Confirm Password",
      Constants.trainingDuration : 'Training Duration',
      Constants.howMatchDoYouTrain :  "how match do you train?",
      Constants.nA :  "None of the above",
          Constants.female :   "Female",
      Constants.male :  "Male",
      Constants.whatsYourGender :   "what's your gender?",
      Constants.email :    "Email",
      Constants.whatsYourEmailAddress :    "what's your email address?",
      Constants.signUp :   "SIGN UP",
      Constants.next :    "Next",
      Constants.continue1 :     "Continue",
      Constants.onceAWeek :     "Once a week",
      Constants.twiceAWeek :     "Twice a week",
      Constants.thriceAWeek :     "Thrice a week",
      Constants.chooseAPassword :    "Choose a password",
      Constants.minimumOf8Characters :    "Minimum of 8 characters",
      Constants.aCapitalLetter :    "A capital letter",
      Constants.aLowercaseLetter :    "A lowercase letter",
      Constants.aNumber :    "A number",
      Constants.bothBoxesMatch :    "Both boxes match",
      Constants.eEmail : "Please Enter Email",
      Constants.pep : "Please Enter Password",
      Constants.pmca8c : "Password must contain atleast 8 characters",
      Constants.peAVE : "Please Enter A Valid Email",
      Constants.chooseYourLanguage : 'Choose Your Language'

    },
        Constants.teluguIndia:{
        Constants.usernameOrEmailAddress:"వినియోగదారుని పేరు లేదా ఇమెయిల్ చిరునామా",
        Constants.password:"పాస్వర్డ్",
        Constants.forgottenPassword:"పాస్‌వర్డ్ మర్చిపోయారా?",
        Constants.lOGIn:"ప్రవేశించండి",
        Constants.doNotHaveAnAccount:"ఖాతా లేదా?",
        Constants.continueWithFacebook:"ఫేస్బుక్ తో కొనసాగించండి",
        Constants.continueWithGoogle:"గూగుల్ తో కొనసాగించండి",
          Constants.signUp:"చేరడం",
          Constants.alreadyHaveAnAccount :"ఖాతా కలిగి ఉన్నారా?",
          Constants.signIn :"సైన్ ఇన్ చేయండి",
          Constants.signUpWithEmailAddress :"ఇమెయిల్ చిరునామాతో సైన్ అప్ చేయండి",
          Constants.sIgnUpWithGoogle :"గూగుల్ తో సైన్ అప్ చేయండి",
          Constants.signUpWithFacebook : "ఫేస్‌బుక్‌తో సైన్ అప్ చేయండి",
          Constants.gainBackControlOfYourLife : "మీ జీవిత నియంత్రణను తిరిగి పొందండి",
          Constants.confirmPassword : "పాస్వర్డ్ను నిర్ధారించండి",
          Constants.trainingDuration : 'శిక్షణ వ్యవధి',
          Constants.howMatchDoYouTrain :  "మీరు శిక్షణ ఎలా మ్యాచ్ చేస్తారు?",
          Constants.nA :  "పైవేవీ కాదు",
          Constants.female :   "స్త్రీ",
          Constants.male :  "పురుషుడు",
          Constants.whatsYourGender :   "మీ లింగం ఏమిటి?",
          Constants.email :    "ఇమెయిల్",
          Constants.whatsYourEmailAddress :    "నీ ఈ మెయిల్ అడ్రెస్ ఏంటి?",
          Constants.signUp :   "చేరడం",
          Constants.next :    "తరువాత",
          Constants.continue1 :     "కొనసాగించు",
          Constants.onceAWeek :     "వారానికి ఒక సారి",
          Constants.twiceAWeek :     "వారం లో రెండు సార్లు",
          Constants.thriceAWeek :     "వారానికి మూడుసార్లు",
          Constants.chooseAPassword :    "పాస్వర్డ్ ను ఎన్నుకోండి",
          Constants.minimumOf8Characters :    "కనీసం 8 అక్షరాలు",
          Constants.aCapitalLetter :    "ఒక పెద్ద అక్షరం",
          Constants.aLowercaseLetter :    "ఒక చిన్న అక్షరం",
          Constants.aNumber :    "ఒక సంఖ్య",
          Constants.bothBoxesMatch :    "రెండు పెట్టెలు సరిపోతాయి",
          Constants.eEmail : "దయచేసి ఇమెయిల్‌ని నమోదు చేయండి",
          Constants.pep : "దయచేసి పాస్‌వర్డ్‌ని నమోదు చేయండి",
          Constants.pmca8c : "పాస్‌వర్డ్ తప్పనిసరిగా కనీసం 8 అక్షరాలను కలిగి ఉండాలి",
          Constants.peAVE : "దయచేసి సరైన ఈమెయిల్ ఇవ్వండి",
          Constants.chooseYourLanguage : 'మీ భాషను ఎంచుకోండి'
        },
        Constants.hindiIndia:{
      Constants.usernameOrEmailAddress:"उपयोगकर्ता का नाम या ईमेल पता",
      Constants.password:"पासवर्ड",
      Constants.forgottenPassword:"पासवर्ड भूल गए?",
      Constants.lOGIn:"लॉग इन करें",
      Constants.doNotHaveAnAccount:"खाता नहीं है?",
      Constants.continueWithFacebook:"फेसबुक के साथ जारी रखें",
      Constants.continueWithGoogle:"गूगल के साथ जारी रखें",
      Constants.signUp:"साइन अप करें",
          Constants.alreadyHaveAnAccount :"क्या आपके पास पहले से एक खाता मौजूद है?",
          Constants.signIn :"साइन इन करें",
          Constants.signUpWithEmailAddress :"ईमेल पते के साथ साइन अप करें",
          Constants.sIgnUpWithGoogle :"गूगल के साथ साइन अप करें",
          Constants.signUpWithFacebook : "फेस्बूक के साथ साइन अप करें",
          Constants.gainBackControlOfYourLife : "अपने जीवन का नियंत्रण वापस प्राप्त करें",
          Constants.confirmPassword : "पासवर्ड की पुष्टि कीजिये",
          Constants.trainingDuration : 'प्रशिक्षण अवधि',
          Constants.howMatchDoYouTrain :  "आप किस तरह से प्रशिक्षण लेते हैं?",
          Constants.nA :  "इनमें से कोई भी नहीं",
          Constants.female :   "महिला",
          Constants.male :  "पुरुष",
          Constants.whatsYourGender :   "तुम लड़का हो या लड़की?",
          Constants.email :    "ईमेल",
          Constants.whatsYourEmailAddress :    "आपका ई मेल पता क्या है?",
          Constants.signUp :   "साइन अप करें",
          Constants.next :    "अगला",
          Constants.continue1 :     "जारी रखें",
          Constants.onceAWeek :     "एक सप्ताह में एक बार",
          Constants.twiceAWeek :     "हफ्ते में दो बार",
          Constants.thriceAWeek :     "सप्ताह में तीन बार",
          Constants.chooseAPassword :    "एक पासवर्ड चुनें",
          Constants.minimumOf8Characters :    "कम से कम 8 अक्षर",
          Constants.aCapitalLetter :    "एक बड़ा अक्षर",
          Constants.aLowercaseLetter :    "एक छोटा अक्षर",
          Constants.aNumber :    "एक संख्या",
          Constants.bothBoxesMatch :    "दोनों बॉक्स मेल खाते हैं",
          Constants.eEmail : "कृपया ईमेल दर्ज करें",
          Constants.pep : "कृपया पासवर्ड दर्ज करें",
          Constants.pmca8c : "पासवर्ड में कम से कम 8 अक्षर होने चाहिए",
          Constants.peAVE : "कृपया एक मान्य ईमेल पता प्रवेश करें",
          Constants.chooseYourLanguage : 'अपनी भाषा चुनिए'
        }
  };

}