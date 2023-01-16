import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/const/import_const.dart';

class LabelLogin extends StatelessWidget {
  const LabelLogin({Key? key,required this.labelName}) : super(key: key);
  final String labelName;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          labelName.tr.toUpperCase(),
          style: Styles.smallTextW700(
            color: Styles.grey11,
          ),
        ).pSymmetric(v: 10, h: 30),
      ],
    );
  }
}
