enum AppRoute {
  login,
  register,
  home,
  profile;

  String get path {
    switch (this) {
      case AppRoute.login:
        return '/login';
      case AppRoute.register:
        return '/register';
      case AppRoute.home:
        return '/search';
      case AppRoute.profile:
        return '/profile';
    }
  }
}
