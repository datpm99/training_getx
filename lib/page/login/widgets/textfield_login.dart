import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/const/import_const.dart';

class TextfieldLogin extends StatelessWidget {
  const TextfieldLogin({Key? key, required this.inputName}) : super(key: key);
  final String inputName;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        // labelStyle: Styles.normalTextW500(
        //   color: Styles.grey1,
        // ),
        hintText: inputName.tr,
        hintStyle: Styles.normalText(color: Styles.grey1),
        enabledBorder: Styles.inputBorder30(),
        focusedBorder: Styles.inputBorder30(color: Styles.primaryColor),
        isDense: true,
        contentPadding: EdgeInsets.only(
          top: 13,
          bottom: 14,
          left: 25,
        ),
      ),
    ).pSymmetric(h: 20);
  }
}
