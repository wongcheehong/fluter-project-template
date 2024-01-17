import 'package:flutter/material.dart';
import 'package:project_basic_setup/core/enum/app_language_code.dart';
import 'package:project_basic_setup/core/service/local/local_pref_repository_service.dart';
import 'package:riverpod/riverpod.dart';

class AppLocale extends Notifier<Locale> {
  @override
  Locale build() {
    final locale = ref.read(localPrefProvider).getAppLocale();
    return locale;
  }

  void setLocale(AppSupportedLanguage language) {
    state = Locale(language.code);
  }
}

final appLocaleNotifierProvider = NotifierProvider<AppLocale, Locale>(
  AppLocale.new,
);
