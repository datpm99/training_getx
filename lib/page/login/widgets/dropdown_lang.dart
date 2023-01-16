import 'package:flutter/material.dart';
import 'package:training_getx/const/import_const.dart';
import 'package:training_getx/page/login/const/login_const.dart';
import 'package:training_getx/page/login/login_controller.dart';
import 'package:get/get.dart';

class DropdownLang extends StatelessWidget {
  const DropdownLang({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      id: LoginConst.idLang,
      builder: (c) {
        return Container(
          width: 50,
          height: 20,
          decoration: BoxDecoration(
            color: Styles.blue1,
            borderRadius: BorderRadius.circular(16),
          ),
          child: DropdownButton<String>(
            value: c.langValue,
            icon: const Icon(Icons.keyboard_arrow_down),
            style: Styles.smallTextW500(color: Styles.black2),
            onChanged: c.onChangedLang,
            items: c.listLang.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ).pSymmetric(h: 6),
        );
      },
    );
  }
}
