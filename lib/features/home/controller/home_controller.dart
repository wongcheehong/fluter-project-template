import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeControllerProvider = Provider<HomeController>((ref) {
  return HomeController();
});

class HomeController {
  Future<void> logout() async {}
}
