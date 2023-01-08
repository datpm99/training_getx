import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/page/page.dart';
import '/routes/routes.dart';

abstract class NavKeys {
  static const int contract = 0;
  static const int home = 1;
  static const int setting = 2;
}

class NavItem {
  final int navKey;
  final GetPage getPage;

  NavItem({required this.navKey, required this.getPage});

  PageRoute generateRoute(RouteSettings settings) {
    return GetPageRoute(
      page: getPage.page,
      routeName: getPage.name,
      binding: getPage.binding,
    );
  }
}

class NavItemData {
  final String name;
  final String icon;
  final String route;
  int idNav;
  final NavItem navItem;

  NavItemData({
    required this.name,
    required this.icon,
    required this.navItem,
    required this.route,
    required this.idNav,
  });
}

class NavData {
  List<NavItemData> myData = [
    NavItemData(
      name: 'menu_contract',
      route: Routes.contract,
      icon: 'assets/icons/ic_menu_contract.png',
      idNav: NavKeys.contract,
      navItem: NavItem(
        navKey: NavKeys.contract,
        getPage: GetPage(
          name: Routes.contract,
          page: () => const ContractView(),
          binding: ContractBinding(),
        ),
      ),
    ),
    NavItemData(
      name: 'menu_home',
      icon: 'assets/icons/ic_menu_home.png',
      route: Routes.home,
      idNav: NavKeys.home,
      navItem: NavItem(
        navKey: NavKeys.home,
        getPage: GetPage(
          name: Routes.home,
          page: () => const HomeView(),
          binding: HomeBinding(),
        ),
      ),
    ),
    NavItemData(
      name: 'menu_setting',
      route: Routes.setting,
      icon: 'assets/icons/ic_menu_setting.png',
      idNav: NavKeys.setting,
      navItem: NavItem(
        navKey: NavKeys.setting,
        getPage: GetPage(
          name: Routes.setting,
          page: () => const SettingView(),
          binding: SettingBinding(),
        ),
      ),
    ),
  ];
}
