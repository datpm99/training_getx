import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:training_getx/const/import_const.dart';
import 'package:training_getx/page/setting/setting_controller.dart';

class SettingFingerprint extends GetView<SettingController> {
  const SettingFingerprint({Key? key}) : super(key: key);

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
              'assets/images/biometrics.png',
              height: 24,
              width: 24,
            ),
            const SizedBox(width: 5),
            Text(
              'login_with_fingerprint'.tr,
              style: Styles.normalTextW700(),
            ),
            const Spacer(),
            Obx(
              () => CupertinoSwitch(
                activeColor: Styles.blue7,
                value: controller.turnOn.value,
                onChanged: (val) => controller.onChangedSwitch(),
              ),
            ),
          ],
        ),
      ),
    ).pSymmetric(h: 11);
  }
}
