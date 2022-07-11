
import 'package:flutter/material.dart';
import 'package:get/get.dart';

String? simpleValid(String? value) {
  if (value == null || value.trim().isEmpty) {
    return 'Please fill in required information';
  }
}

String? emailValid(String? value) {
  if (value == null || value.trim().isEmpty) {
    return 'Please enter your email';
  } else if (!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value.trim())) {
    return 'We need your real one!';
  }
}

String? passValid(String? value) {
  if (value == null || value.trim().isEmpty) {
    return 'Please enter password';
  } else if (value.length < 6) {
    return 'Your password should have at least 6 characters';
  } else if (!value.contains(RegExp(r'[A-Z]'))) {
    return 'Your password should include at least one capital letter';
  } else if (!value.contains(RegExp(r'[0-9]'))) {
    return 'Your password should include at least one digit';
  }
}

bool validateInput(TextEditingController controller, Rx<bool> showError, String? validate(String? text)) {
  String? result = validate(controller.text);
  if (result == null) {
    showError.value = false;
    return true;
  } else {
    showError.value = true;
    return false;
  }
}



bool validateCheckbox(Rx<bool> isChecked, Rx<bool> showError) {
  if (isChecked.value == false) {
    showError.value = true;
    return false;
  } else {
    showError.value = false;
    return true;
  }
}

void inputValidOnChange(Rx<bool> showError){
  showError.value = false;
}

void chooseCountryShowError(Rx<String> textError, Rx<String> selectedCountry){
  if(selectedCountry.value == ''){
    textError.value = 'You should choose a country';
  }
}

