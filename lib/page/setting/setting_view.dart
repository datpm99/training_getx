import 'package:flutter/material.dart';
import 'package:training_getx/const/import_const.dart';
import 'package:training_getx/page/setting/setting_option.dart';

class SettingView extends StatelessWidget {
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
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  const SettingOption(settingName: 'Đổi mật khẩu', settingImage: 'assets/images/lock.png'),
                  const SettingOption(settingName: 'Đổi ngôn ngữ (VNI)', settingImage: 'assets/images/translate.png'),
                  const SettingOption(settingName: 'Đăng nhập bằng vân tay', settingImage: 'assets/images/biometrics.png'),
                  const SettingOption(settingName: 'Hỗ trợ khách hàng', settingImage: 'assets/images/headphones.png'),
                  const SettingOption(settingName: 'Đăng xuất', settingImage: 'assets/images/logout.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
