import 'package:flutter/material.dart';
import 'package:project_basic_setup/common/common_providers.dart';
import 'package:riverpod/riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final localPrefProvider = Provider<LocalPreferenceRepositoryService>((ref) {
  return LocalPreferenceRepositoryService(pref: ref.read(sharedPrefProvider));
});

class LocalPreferenceRepositoryService {
  LocalPreferenceRepositoryService({
    required this.pref,
  });

  final SharedPreferences pref;

  Locale getAppLocale() {
    final languageCode = pref.getString('locale') ?? 'en';
    return Locale(languageCode);
  }

  void setAppLocale({required String languageCode}) {
    pref.setString('locale', languageCode);
  }
}
