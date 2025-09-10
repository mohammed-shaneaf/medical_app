class AppRegex {
  static bool isEmailValid(String email) {
    return RegExp(
      r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$',
    ).hasMatch(email);
  }

  static bool isPasswordValid(String password) {
    return RegExp(
      r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$",
    ).hasMatch(password);
  }

  static bool isSyrianPhoneNumberValid(String phoneNumber) {
    final syrianLocal = RegExp(r'^09\d{8}$');
    final syrianInternational = RegExp(r'^\+9639\d{8}$');
    return syrianLocal.hasMatch(phoneNumber) ||
        syrianInternational.hasMatch(phoneNumber);
  }

  static bool hasLowerCase(String password) {
    return RegExp(r'^(?=.*[a-z])').hasMatch(password);
  }

  static bool hasUpperCase(String password) {
    return RegExp(r'^(?=.*[A-Z])').hasMatch(password);
  }

  static bool hasNumber(String password) {
    return RegExp(r'^(?=.*?[0-9])').hasMatch(password);
  }

  static bool hasSpecialCharacters(String password) {
    return RegExp(r'^(?=.*?[#?!@$%^&*-])').hasMatch(password);
  }

  static bool hasMinLength(String password) {
    return RegExp(r'^(?=.{8,})').hasMatch(password);
  }
}
