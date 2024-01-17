import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:project_basic_setup/common/common_providers.dart';
import 'package:project_basic_setup/common/constants/app_theme.dart';
import 'package:project_basic_setup/common/widgets/loading_indicator.dart';
import 'package:project_basic_setup/l10n/app_locale.dart';
import 'package:project_basic_setup/routing/app_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final sharedPreferences = await SharedPreferences.getInstance();
  runApp(
    ProviderScope(
      overrides: [
        sharedPrefProvider.overrideWithValue(sharedPreferences),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GlobalLoaderOverlay(
      useDefaultLoading: false,
      overlayWidgetBuilder: (_) {
        return const LoadingIndicator();
      },
      overlayColor: Colors.grey.withOpacity(0.8),
      child: MaterialApp.router(
        theme: AppTheme.lightTheme,
        routerConfig: ref.watch(goRouterProvider),
        locale: ref.watch(appLocaleNotifierProvider),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
