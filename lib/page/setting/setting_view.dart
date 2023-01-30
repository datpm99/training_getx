import 'package:flutter/material.dart';
import 'package:training_getx/const/import_const.dart';
import 'package:training_getx/page/setting/widgets/setting_login_fingerprint.dart';
import 'package:training_getx/page/setting/widgets/setting_logout.dart';
import 'package:training_getx/page/setting/widgets/setting_option.dart';
import 'package:get/get.dart';
import 'package:training_getx/page/setting/setting_controller.dart';

class SettingView extends GetView<SettingController> {
  const SettingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.blue6,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).viewPadding.top),
            Center(
              child: Image.asset(
                'assets/images/settings_avatar.png',
                height: 120,
                width: 120,
              ),
            ),
            Text(
              'Nguyễn Nam Trung',
              style: Styles.normalTextW900(
                color: Colors.white,
                size: 24,
              ),
            ),
            Text(
              'CN Hưng Yên - TTCNTT',
              style: Styles.normalTextW700(
                color: Colors.white,
                size: 13,
              ),
            ),
            const SizedBox(height: 32),
            Container(
              height: 378,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  SettingOption(
                    settingName: 'change_password',
                    settingImage: 'assets/images/lock.png',
                    onTap: () {},
                  ),
                  SettingOption(
                    settingName: 'change_language',
                    settingImage: 'assets/images/translate.png',
                    onTap: controller.showLangDialog,
                  ),
                  const SettingFingerprint(),
                  SettingOption(
                      settingName: 'assist_customer',
                      settingImage: 'assets/images/headphones.png',
                      onTap: controller.showAssistCusDialog),
                  const SettingLogout(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
