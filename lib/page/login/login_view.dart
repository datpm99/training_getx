import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:training_getx/widgets/buttons/default_button.dart';
import '/const/import_const.dart';
import 'login_controller.dart';
import 'widgets/form_login.dart';
import 'widgets/header.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Header.
            SizedBox(height: MediaQuery.of(context).viewPadding.top),
            const HeaderLogin(),
            Text(
              'login'.tr,
              style: Styles.normalTextW700(size: 24),
            ),

            //Form login.
            const FormLogin(),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: controller.showSheetForgotPass,
                  child: Text(
                    'forgot_password'.tr,
                    style: Styles.normalTextW600(
                      color: Styles.blue7,
                    ),
                  ),
                ).pSymmetric(h: 20),
              ],
            ),
            DefaultButton(
              width: Get.width,
              color: Styles.primaryColor,
              text: 'login',
              onTap: controller.login,
            ).pSymmetric(h: 20),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
