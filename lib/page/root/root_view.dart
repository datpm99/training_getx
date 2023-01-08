import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/page/root/root_controller.dart';
import '/page/root/widgets/bottom_navbar.dart';

class RootView extends GetView<RootController> {
  const RootView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: controller.canPop,
      child: Scaffold(
        body: Obx(
          () {
            return IndexedStack(
              index: controller.selectedNav.value,
              children: controller.getPages(),
            );
          },
        ),
        bottomNavigationBar: const AppBottomNavBar(),
      ),
    );
  }
}
