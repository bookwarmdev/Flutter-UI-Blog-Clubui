class AppValidator {
  static String? validate(String? value) {
    if (value!.trim().isEmpty) return "field can't be empty";

    return null;
  }

  static String? email(String? value) {
    if (value!.trim().isEmpty) return "field can't be empty";
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

    RegExp regExp = RegExp(pattern);

    if (regExp.hasMatch(value) == false) return "invalide email address";

    return null;
  }

  static String? password(String? value) {
    if (value!.trim().isEmpty) return "field can't be empty";

    String pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    if (RegExp(pattern).hasMatch(value) == false) {
      return "should contain at least: \none upper case, one lower case, \none digit and special character";
    } else if (RegExp(".{8,}").hasMatch(value) == false) {
      return "Must be more than 8 charater";
    }
    // else if (RegExp("(?=.*[A-Z])").hasMatch(value)) {
    //   return "should contain at least one upper case";
    // } else if (RegExp("(?=.*[a-z])").hasMatch(value)) {
    //   return "should contain at least one lower case";
    // } else if (RegExp("(?=.*[0-9])").hasMatch(value)) {
    //   return "should contain at least one digit";
    // } else if (RegExp("(?=.*?[!@#\$&*~])").hasMatch(value)) {
    //   return "should contain at least one Special character";
    // }

    return null;
  }
}
