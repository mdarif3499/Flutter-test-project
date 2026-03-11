//Text input field validation

import 'package:flutter/material.dart';

enum InputFieldType {
  email,
  password,
  normal,
  name,
  phoneNumber,
  address,
  number,
  emailOrPhoneNumber,
}

mixin TextFieldValidationMixin<T extends StatefulWidget> on State<T> {
  String? textFieldValidator({
    required String? textForValidation,
    InputFieldType inputFieldType = InputFieldType.normal,
  }) {
    String? returnValue;

    //common validation
    if (textForValidation != null && textForValidation.isEmpty) {
      return "Field cannot be empty";
    }

    switch (inputFieldType) {
      //name validation
      case InputFieldType.name:
        final bool nameValidation = RegExp(
          r'^[a-zA-Z]{3,}$',
        ).hasMatch(textForValidation!);
        if (nameValidation == false) {
          returnValue = "Invalid Name";
        }
        break;

      //Address Street validation
      case InputFieldType.address:
        final bool streetValidation = RegExp(
          r'^[a-zA-Z0-9\s\p{L}\p{N}.,\-#/&]{3,}$',
        ).hasMatch(textForValidation!);
        if (streetValidation == false) {
          returnValue = "Invalid Address";
        }
        break;

      //phoneNumber validation
      case InputFieldType.phoneNumber:
        final bool phoneNumberValidation = RegExp(
          r'^\+?[1-9]\d{1,14}$',
        ).hasMatch(textForValidation!);

        if (phoneNumberValidation == false) {
          returnValue = "PhoneNumber is invalid";
        }
        break;

      //email validation
      case InputFieldType.email:
        final bool emailValidation = RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
        ).hasMatch(textForValidation!);
        if (emailValidation == false) {
          returnValue = "Email is invalid";
        }
        break;

      //Password validation
      case InputFieldType.password:
        final bool passwordValidation = RegExp(
          r'^(?=.*?[0-9])(?=.*?[A-Za-z]).{8,}$',
        ).hasMatch(textForValidation!);
        if (passwordValidation == false) {
          returnValue =
              "Password should contain at least 8 characters, including at least one letter and one number.";
        }
        break;

      case InputFieldType.number:
        final bool numberValidation = RegExp(
          r'^[0-9]+$',
        ).hasMatch(textForValidation!);
        if (numberValidation == false) {
          returnValue = "Invalid Number";
        }
        break;

      case InputFieldType.emailOrPhoneNumber:
        final bool emailValidation = RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
        ).hasMatch(textForValidation!);

        final bool phoneNumberValidation = RegExp(
          r'^\+?[1-9]\d{1,14}$',
        ).hasMatch(textForValidation);

        if (emailValidation == false && phoneNumberValidation == false) {
          returnValue = "PhoneNumber Or Email Is invalid";
        }

      default:
    }

    return returnValue;
  }
}
