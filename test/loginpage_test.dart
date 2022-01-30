import 'package:amplify/CommonMethods/FormValidator.dart';
import 'package:flutter_test/flutter_test.dart';

void main()
{
  group('LoginPage', ()
  {
    // test('Empty Email Test', ()
    // {
    //   var result = FormValidator.validateEmail('');
    //   expect(result, 'Please Enter Email!');
    // });

    test('Invalid Email Test', ()
    {
      var result = FormValidator.validateEmail('asdfasdfasdf');
      expect(result, 'Please Enter A Valid Email');
    });

    test('Valid Email Test', ()
    {
      var result = FormValidator.validateEmail('chaithu522@gmail.com');
      expect(result, null);
    });

    // test('Empty Password Test', ()
    // {
    //   var result = FormValidator.validatePassword('');
    //   expect(result, 'Please Enter Password.');
    // });
    //
    // test('Invalid Password Test', ()
    // {
    //   var result = FormValidator.validatePassword('2');
    //   expect(result, 'Password must contain atleast 3 characters.');
    // });

    test('Valid Password Test', ()
    {
      var result = FormValidator.validatePassword('chaitanya12345');
      expect(result, null);
    });
  });
}
