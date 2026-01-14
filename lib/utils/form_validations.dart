import 'dart:math';

String? validateString(String string, {bool enableEmpty = false}) {
  if (string.isEmpty && !enableEmpty) return "This field is required";
  if (string.isNotEmpty && string.length < 3)
    return "Please provide more information";
  return null;
}

String? validateEmail(String email) {
  RegExp emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

  if (email.isEmpty) return "Email is required";
  if (email.length < 5 || email.length > 254) return "Invalid email format";
  if (!emailRegex.hasMatch(email)) return "Invalid email format";
  return null;
}

String? validatePassword(String password) {
  // Firebase will handle password strength
  if (password.isEmpty) return "Password is required";
  return null;
}

String? validateRepeatPassword(String password, String repeatPassword) {
  if (password != repeatPassword) return "Passwords don't match";
  return null;
}

String? validateName(String name) {
  RegExp namePattern = RegExp(r'^[A-Za-z]+$');

  if (name.isEmpty) return "Name is required";
  if (name.length < 2 || name.length > 50) {
    return "Name must be be between 2 and 50 characters";
  }
  if (!namePattern.hasMatch(name)) return "Name can only contain letters";
  return null;
}

String? validateSurname(String surname) {
  RegExp surnamePattern = RegExp(r'^[A-Za-z]+$');

  if (surname.isEmpty) return "Surname is required";
  if (surname.length < 2 || surname.length > 50) {
    return "Surname must be be between 2 and 50 characters";
  }
  if (!surnamePattern.hasMatch(surname)) {
    return "Surname can only contain letters";
  }
  return null;
}

// TODO use package to validate phone number
String? validatePhoneNumber(String phone) {
  RegExp phoneRegex = RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$');

  if (phone.isEmpty) return "Phone is required";
  if (phone.length < 7 || phone.length > 15) {
    return "Phone length must be between 7 and 15 characters";
  }
  if (!phoneRegex.hasMatch(phone)) return "Invalid phone number format";
  return null;
}

void putErrorIfExists(Map<String, String> map, String key, String? value) {
  if (value != null) map[key] = value;
}

String? validateCardsPerSession(int cardsPerSession) {
  if (cardsPerSession < 5 || cardsPerSession > 100) {
    return "You must enter a number between 5 and 100";
  }
  return null;
}

String? validateNumber(String number, int minValue, int maxValue) {
  final numberParsed = int.tryParse(number);
  if (numberParsed == null) return "Please enter a number";

  if (numberParsed < minValue || numberParsed > maxValue) {
    return "Value must be between $minValue and $maxValue";
  }

  return null;
}

String? validateClampedNumber(
  String number,
  int minValue,
  int maxValue,
  int clampValue,
) {
  final numberParsed = int.tryParse(number);
  if (numberParsed == null) return "Please enter a number";

  final effectiveMax = maxValue.clamp(minValue, clampValue);

  if (numberParsed < minValue || numberParsed > effectiveMax) {
    return "Value must be between $minValue and $effectiveMax";
  }

  return null;
}
