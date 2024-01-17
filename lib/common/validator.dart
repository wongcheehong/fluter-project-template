import 'constants/constant.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Validator {
  Validator({required this.loc});

  final AppLocalizations loc;

  String? requiredValidator(String? value) {
    if (value == null || value.isEmpty) {
      return loc.defaultrequiredFieldErrorHint;
    }

    return null;
  }

  String? emailValidator(String? value) {
    final requiredMessage = requiredValidator(value);
    if (requiredMessage != null) {
      return loc.requiredFieldErrorHint(loc.email);
    }

    if (!Constants.emailRegex.hasMatch(value ?? '')) {
      return loc.invalidEmailErrorHint;
    }

    return null;
  }

  String? passwordValidator(String? value) {
    final requiredMessage = requiredValidator(value);
    if (requiredMessage != null) {
      return loc.requiredFieldErrorHint(loc.password);
    }

    if (value != null && value.length < 8) {
      return loc.weakPasswordErrorHint;
    }

    return null;
  }

  String? confirmPaswordValidator(String? password, String? confirmPassword) {
    final requiredMessage = requiredValidator(confirmPassword);
    if (requiredMessage != null) {
      return loc.requiredFieldErrorHint(loc.confirmPassword);
    }

    if (password != confirmPassword) {
      return loc.passwordsDoNotMatchErrorHint;
    }

    return null;
  }
}
