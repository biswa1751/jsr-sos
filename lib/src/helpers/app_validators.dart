/// validators
class AppValidators {
  static String? userNameValidator(String input) {
    var nameFormat = RegExp(r'^[A-Z\s\.a-z]+$');
    if (input.isEmpty) {
      return 'Please Enter Your SW Username';
    } else if (!nameFormat.hasMatch(input)) {
      return 'Only text please';
    } else {
      return null;
    }
  }

  static String? nameValidator(String input) {
    var nameFormat = RegExp(r'^[A-Z\s\.a-z]+$');
    if (input.isEmpty) {
      return 'Please Enter Your Name';
    } else if (!nameFormat.hasMatch(input)) {
      return 'Only text please';
    } else {
      return null;
    }
  }

  static String? phoneValidator(String input) {
    var phoneFormat = RegExp(r'^(\+91){0,1}[6-9][0-9]{9}$');
    if (input.isEmpty) {
      return 'Please enter your Mobile number';
    } else if (!phoneFormat.hasMatch(input)) {
      return 'Invalid Mobile Number';
    } else {
      return null;
    }
  }

  static String? pincodeValidator(String input) {
    if (input.isEmpty) {
      return 'Please enter your Pincode';
    } else if (input.length != 6) {
      return 'Invalid PinCode';
    } else {
      return null;
    }
  }

  static String? addressValidator(String input) {
    return input.isEmpty ? 'Please enter your address' : null;
  }

  static String? emailValidator(String input) {
    var emailFormat =
        RegExp(r'^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$');
    if (input.isEmpty) {
      return 'Please enter your Email';
    } else if (!emailFormat.hasMatch(input)) {
      return 'Invalid Email';
    } else {
      return null;
    }
  }

  static String? passwordValidator(String input) {
    var passwordFormat = RegExp(
        r'^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$');
    if (input.isEmpty) {
      return 'Please enter password';
    } else if (input.length < 8) {
      return 'Minimum eight characters';
    } else if (!passwordFormat.hasMatch(input)) {
      return 'At least one letter, one number and one special character';
    } else {
      return null;
    }
  }

  static String? emptyValidator(String input) {
    if (input.isEmpty) {
      return 'Please, Enter Some data';
    } else {
      return null;
    }
  }

  static String? priceValidator(String input) {
    try {
      print(int.tryParse(input));
      if (input.isEmpty) {
        return 'Enter a price';
      } else if (int.tryParse(input) == null) {
        return 'invalid number';
      } else {
        return null;
      }
    } catch (e) {
      return e.toString();
    }
  }

  static String? pinValidator(String input) {
    var passwordFormat = RegExp(r'^[0-9]{4}$');
    if (input.isEmpty) {
      return 'Please enter a pin';
    } else if (!passwordFormat.hasMatch(input)) {
      return 'Invalid pin';
    } else {
      return null;
    }
  }

  static String? aboutMeValidator(String input) {
    return input.isEmpty ? 'Please enter About Me' : null;
  }

  static String? ifscValidator(String input) {
    var passwordFormat = RegExp(r'^[A-Z]{4}0[A-Z0-9]{6}$');
    if (input.isEmpty) {
      return 'Please enter IFSC code';
    } else if (!passwordFormat.hasMatch(input)) {
      return 'Invalid IFSC';
    } else {
      return null;
    }
  }
}
