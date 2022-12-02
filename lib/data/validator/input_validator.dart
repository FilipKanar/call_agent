import 'package:email_validator/email_validator.dart';

class InputValidator{
  static bool emailValidation(String? email){
    return email != null && EmailValidator.validate(email);
  }
  static bool passwordValidation(String? password){
    return password != null && password.length > 6;
  }
  static bool phoneNumberValidation(String? phoneNumber){
    return phoneNumber != null && phoneNumber.length<10 && phoneNumber.length>5;
  }
  static bool notEmptyValidation(String? string){
    return string != null && string.isNotEmpty;
  }
  static bool websiteValidation(String? string){
    return string != null && Uri.parse(string).isAbsolute;
  }
}