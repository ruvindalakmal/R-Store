class TValidator{
  static String? validateEmail(String? value){
    if(value == null || value.isEmpty){
      return "Email is Required";
    }
    final emailRegex = RegExp(r'^...+\.[a-zA-Z]{2,}$' r'^...+\.[a-zA-Z]{2,20}$');

    if(!emailRegex.hasMatch(value)){
      return 'Please Input Valid Email Address';
    }

    return null;
  }

  static String? validatePassword(String? value){
    if(value == null || value.isEmpty){
      return "Password is Required";
    }

    if(value.length<8){
      return 'Password must be at least 8 characters long';
    }

    if(!value.contains(RegExp(r'[A-Z]'))){
      return 'Password must be at least Uppercase letter';
    }

    if(!value.contains(RegExp(r'[0-9]'))){
      return 'Password must be at least one number';
    }

    if(!value.contains(RegExp(r'[!@#$%^&*_]'))){
      return 'Password must be at least one special character';
    }

    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a phone number';
    }

    final phoneRegex = RegExp(
      r'^(\+947\d{8}|07\d{8})$',
    );

    if (!phoneRegex.hasMatch(value)) {
      return 'Enter a valid phone number (e.g., 07XXXXXXXX, +947XXXXXXXX)';
    }

    return null;
  }
}