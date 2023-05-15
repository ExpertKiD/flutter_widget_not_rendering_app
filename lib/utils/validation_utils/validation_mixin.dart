class ValidationMixin {
  String? validate(String value, String title) {
    if (value.trim().isEmpty) {
      return '$title';
    }
    return null;
  }

  String? validateEmail(String value, String title) {
    if (value.trim().isEmpty) {
      return 'Plese enter your $title';
    }

    return null;
  }

  String? validatePassword(String value, String title) {
    if (value.trim().isEmpty) {
      return 'Plese enter your $title';
    }

    return null;
  }

  String? validateNumber(String value, String title) {
    if (value.toString().trim().isEmpty) {
      return 'required $title';
    }
    return null;
  }
}
