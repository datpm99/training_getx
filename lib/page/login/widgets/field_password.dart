import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:training_getx/const/import_const.dart';
import 'package:training_getx/page/login/login_controller.dart';

class FieldPassword extends GetView<LoginController> {
  const FieldPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return TextField(
        obscureText: controller.showPass.value,
        decoration: InputDecoration(
          hintText: 'Nhập mật khẩu',
          hintStyle: Styles.normalText(color: Styles.grey1),
          suffixIcon: InkWell(
            onTap: controller.onChangedShowPassword,
            child: Icon(
              (controller.showPass.value)
                  ? Icons.visibility_off_outlined
                  : Icons.visibility_outlined,
              color: Styles.grey10,
            ),
          ),
          labelStyle: Styles.normalTextW500(
            color: Styles.grey1,
          ),
          enabledBorder: Styles.inputBorder30(),
          focusedBorder: Styles.inputBorder30(color: Styles.primaryColor),
          isDense: true,
          contentPadding: const EdgeInsets.all(10),
        ),
      ).pSymmetric(h: 20);
    });
  }
}
