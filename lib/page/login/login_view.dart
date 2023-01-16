import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:training_getx/const/import_const.dart';
import 'package:training_getx/page/login/widgets/button_login.dart';
import 'package:training_getx/page/login/widgets/textfield_login.dart';
import 'login_controller.dart';
import 'widgets/dropdown_lang.dart';
import 'widgets/field_password.dart';
import 'widgets/header.dart';
import 'widgets/label_login.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).viewPadding.top),
            Stack(
              children: [
                Image.asset(
                  'assets/images/bg.png',
                  // fit: BoxFit.fitWidth,
                ),
                Center(
                  child: Image.asset(
                    'assets/images/image_contract.png',
                    width: 287,
                    height: 257,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Styles.white1,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Image.asset(
                            'assets/images/logo_MDO_1.png',
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                              text: 'MDO',
                              style: Styles.normalTextW700(),
                              children: [
                                TextSpan(
                                  text: '-eContract',
                                  style: Styles.normalTextW500(),
                                ),
                              ]),
                        ),
                      ],
                    ),
                    const DropdownLang(),
                  ],
                ).paddingAll(14),
              ],
            ),
            Text(
              'login'.tr,
              style: Styles.normalTextW700(
                size: 24,
              ),
            ),
            const SizedBox(height: 20),
            const LabelLogin(labelName: 'DOANH NGHIỆP'),
            const TextfieldLogin(inputName: 'Doanh nghiệp'),
            const LabelLogin(labelName: 'TÊN ĐĂNG NHẬP'),
            const TextfieldLogin(inputName: ' Nhập tên đăng nhập'),
            const LabelLogin(labelName: 'MẬT KHẨU'),
            const FieldPassword(),
            // SizedBox(
            //   width: 316,
            //   child: TextField(
            //     obscureText: true,
            //     enableSuggestions: false,
            //     autocorrect: false,
            //     decoration: InputDecoration(
            //       suffixIcon: Icon(
            //         Icons.visibility_off_outlined,
            //         color: Styles.grey10,
            //       ),
            //       labelStyle: Styles.normalTextW500(
            //         color: Styles.grey1,
            //       ),
            //       labelText: 'Nhập mật khẩu',
            //       enabledBorder: Styles.inputBorder30(),
            //       isDense: true,
            //       contentPadding: EdgeInsets.only(
            //         top: 13,
            //         bottom: 14,
            //         left: 25,
            //       ),
            //     ),
            //   ).pOnly(left: 10),
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Get.bottomSheet(
                      Container(
                        height: 342,
                        decoration: BoxDecoration(
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
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'forgot_password'.tr.toUpperCase(),
                                    style: Styles.mediumTextW800(),
                                  ).pSymmetric(v: 18),
                                  GestureDetector(
                                    child: const Icon(Icons.close),
                                  onTap: Get.back,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20),
                              const LabelLogin(labelName: 'EMAIL'),
                              const TextfieldLogin(
                                  inputName: 'Nhập email đã đăng ký'),
                              const SizedBox(height: 48),
                              ButtonLogin(
                                  buttonName: 'reset_password'.tr.toUpperCase(),
                                  onPressed: () {}),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  child: Text(
                    'Quên mật khẩu?',
                    textAlign: TextAlign.end,
                    style: Styles.normalTextW600(
                      color: Styles.blue7,
                    ),
                  ),
                ).pSymmetric(h: 20),
              ],
            ),
            ButtonLogin(
              buttonName: 'login'.tr.toUpperCase(),
              onPressed: controller.login,
            ),
            const Header(),
          ],
        ),
      ),
    );
  }
}
