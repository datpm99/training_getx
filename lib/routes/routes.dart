import 'package:get/get.dart';
import '/page/page.dart';

abstract class Routes {
  static const login = '/login';

  static const root = '/root';

  static const contract = '/contract';
  static const home = '/home';
  static const setting = '/setting';
}

abstract class AppPages {
  static String initial = Routes.login;

  static final routes = [
    GetPage(
      name: Routes.login,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.root,
      page: () => const RootView(),
      binding: RootBinding(),
    ),
  ];
}
