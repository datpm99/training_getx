import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:training_getx/const/import_const.dart';
import 'package:training_getx/page/login/widgets/textfield_login.dart';
import 'package:training_getx/widgets/buttons/default_button.dart';
import 'label_login.dart';

class SheetForgotPass extends StatelessWidget {
  const SheetForgotPass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 342,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        color: Colors.white,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(width: 24),
                Text(
                  'forgot_password'.tr.toUpperCase(),
                  style: Styles.mediumTextW800(),
                ).pSymmetric(v: 18),
                GestureDetector(
                  child: const Icon(Icons.close, size: 24),
                  onTap: Get.back,
                ),
              ],
            ),
            const SizedBox(height: 20),
            const LabelLogin(labelName: 'email'),
            const TextfieldLogin(inputName: 'enter_registered_email'),
            const SizedBox(height: 48),
            DefaultButton(
              width: Get.width,
              color: Styles.primaryColor,
              text: 'reset_password',
              onTap: () {},
            ).pSymmetric(h: 20),
          ],
        ),
      ),
    );
  }
}
