import 'package:flutter/material.dart';

import 'field_password.dart';
import 'label_login.dart';
import 'textfield_login.dart';

class FormLogin extends StatelessWidget {
  const FormLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        SizedBox(height: 20),
        LabelLogin(labelName: 'business'),
        TextfieldLogin(inputName: 'business'),
        LabelLogin(labelName: 'username'),
        TextfieldLogin(inputName: 'enter_username'),
        LabelLogin(labelName: 'password'),
        FieldPassword(),
      ],
    );
  }
}
