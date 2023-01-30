import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:training_getx/const/import_const.dart';

class SettingLogout extends StatelessWidget {
  const SettingLogout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: Styles.white2,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Image.asset(
              'assets/images/logout.png',
              height: 24,
              width: 24,
            ),
            const SizedBox(width: 5),
            Text(
              'logout'.tr,
              style: Styles.normalTextW700(),
            ),
          ],
        ),
      ),
    ).pSymmetric(h: 11);
  }
}
