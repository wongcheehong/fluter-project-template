import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:project_basic_setup/core/enum/app_route.dart';
import 'package:project_basic_setup/features/auth/view/login_screen.dart';
import 'package:project_basic_setup/features/home/view/home_screen.dart';
import 'package:project_basic_setup/routing/scaffold_with_nested_navigation.dart';

final rootNavigatorKeyProvider =
    Provider<GlobalKey<NavigatorState>>((ref) => GlobalKey<NavigatorState>());

final goRouterProvider = Provider<GoRouter>((ref) {
  final rootNavigatorKey = ref.watch(rootNavigatorKeyProvider);

  return GoRouter(
    initialLocation: AppRoute.home.path,
    navigatorKey: rootNavigatorKey,
    debugLogDiagnostics: true,
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return ScaffoldWithNestedNavigation(
            navigationShell: navigationShell,
          );
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoute.home.path,
                name: AppRoute.home.name,
                pageBuilder: ((context, state) {
                  return const MaterialPage(
                    child: HomeScreen(),
                  );
                }),
              )
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoute.profile.path,
                name: AppRoute.profile.name,
                builder: (context, state) => const Center(
                  child: Text('Profile'),
                ),
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        path: AppRoute.login.path,
        parentNavigatorKey: rootNavigatorKey,
        name: AppRoute.login.name,
        pageBuilder: ((context, state) {
          return const MaterialPage(
            child: LoginScreen(),
          );
        }),
      ),
      GoRoute(
        path: AppRoute.register.path,
        parentNavigatorKey: rootNavigatorKey,
        name: AppRoute.register.name,
        pageBuilder: ((context, state) {
          return MaterialPage(
            key: state.pageKey,
            child: const Placeholder(),
          );
        }),
      ),
    ],
    redirect: (BuildContext context, GoRouterState state) async {
      return null;
    },
  );
});
