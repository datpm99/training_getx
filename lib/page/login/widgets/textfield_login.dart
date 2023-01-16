import 'package:flutter/material.dart';
import '/const/import_const.dart';

class TextfieldLogin extends StatelessWidget {
  const TextfieldLogin({Key? key, required this.inputName}) : super(key: key);
  final String inputName;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        suffixIcon: inputName == 'Nhập mật khẩu'
            ? const Icon(
                Icons.visibility_off_outlined,
                color: Styles.grey10,
              )
            : null,
        labelStyle: Styles.normalTextW500(
          color: Styles.grey1,
        ),
        labelText: inputName,
        enabledBorder: Styles.inputBorder30(),
        focusedBorder: Styles.inputBorder30(),
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
