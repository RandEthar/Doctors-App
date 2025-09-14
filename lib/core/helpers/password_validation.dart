import 'package:doctors_app/core/helpers/app_regex.dart';

String ? passwordValidation(String? value ){
   if (value == null || value.isEmpty) {
    return "Password is required";
  } else if (value.length < 8) {
    return "Password must be at least 8 characters";
  } else if (!AppRegex.hasUpperCase(value)) {
    return "Password must contain at least one uppercase letter";
  } else if (!AppRegex.hasLowerCase(value)) {
    return "Password must contain at least one lowercase letter";
  } else if (!AppRegex.hasNumber(value)) {
    return "Password must contain at least one number";
  } else if (!AppRegex.hasSpecialCharacter(value)) {
    return "Password must contain at least one special character";
  }
  return null;
}