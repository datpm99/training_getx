import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/widgets/dialogs/exit_dialog.dart';
import 'models/nav_model.dart';

class RootController extends GetxController {
  final _pages = <Widget>[];
  List<NavItemData> lstNav = [];
  late NavItemData _currentModel;
  RxInt selectedNav = 1.obs;

  @override
  void onInit() {
    super.onInit();
    lstNav = NavData().myData;
    _currentModel = lstNav[1];
  }

  Future<void> onTapNav(int idx) async {
    final model = lstNav[idx];
    if (model != _currentModel) {
      _currentModel = model;
    } else {
      final navKey = Get.nestedKey(_currentModel.navItem.navKey);
      if (navKey!.currentState!.canPop()) await canPop();
    }

    selectedNav(idx);
  }

  List<Widget> getPages() {
    if (_pages.isEmpty) {
      _pages.addAll(lstNav.map((e) => Navigator(
            key: Get.nestedKey(e.navItem.navKey),
            onGenerateRoute: e.navItem.generateRoute,
          )));
    }
    return _pages;
  }

  Future<bool> canPop() async {
    final navKey = Get.nestedKey(_currentModel.navItem.navKey);
    if (navKey!.currentState!.canPop()) {
      navKey.currentState!.pop();
      return Future.value(false);
    } else {
      final result = await Get.dialog(
        const ExitDialog(title: 'msg_close_app'),
        barrierDismissible: false,
      );

      if (result != null && result) return Future.value(true);
    }

    return Future.value(false);
  }
}
