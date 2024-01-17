import 'dart:ui';

enum AppSupportedLanguage {
  english,
  indonesian,
  arabic;

  String get code {
    switch (this) {
      case AppSupportedLanguage.english:
        return 'en';
      case AppSupportedLanguage.indonesian:
        return 'id';
      default:
        return 'ar';
    }
  }

  static List<Locale> get languageList {
    List<Locale> list = [];
    for (AppSupportedLanguage language in AppSupportedLanguage.values) {
      list.add(Locale(language.code));
    }
    return list;
  }
}
