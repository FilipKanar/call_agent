
import 'package:call_agent/data/validator/input_validator.dart';
import 'package:flutter_test/flutter_test.dart';

void main (){
  test('email validation', () {
    expect(InputValidator.emailValidation('papajwojtyla'), false);
    expect(InputValidator.emailValidation('papajwojtyla@jp.2'), false);
    expect(InputValidator.emailValidation('papajwojtyla@jp.dwa'), true);
  });
  test('password validation', () {
    expect(InputValidator.passwordValidation('papaj'), false);
    expect(InputValidator.passwordValidation('papajwojtyla'), true);
    expect(InputValidator.passwordValidation('papajwojtyla@jp.dwa'), true);
  });
  test('phone number validation', () {
    expect(InputValidator.phoneNumberValidation('234'), false);
    expect(InputValidator.phoneNumberValidation('234234234'), true);
    expect(InputValidator.phoneNumberValidation('123123123123123123'), false);
  });
  test('phone number validation', () {
    expect(InputValidator.notEmptyValidation(''), false);
    expect(InputValidator.notEmptyValidation('2'), true);
    expect(InputValidator.notEmptyValidation('123123123123123123'), true);
  });
  test('website validation', () {
    expect(InputValidator.websiteValidation('www.jp.pl'), false);
    expect(InputValidator.websiteValidation('https://stackoverflow.com/questions/273141/regex-for-numbers-only'), true);
    expect(InputValidator.websiteValidation(''), false);
  });
}