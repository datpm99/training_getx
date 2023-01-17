import 'package:flutter/material.dart';
import 'package:training_getx/const/import_const.dart';

import 'dropdown_lang.dart';

class HeaderLogin extends StatelessWidget {
  const HeaderLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/bg.png'),
        Center(
          child: Image.asset(
            'assets/images/image_contract.png',
            width: 287,
            height: 257,
          ),
        ),
        Row(
          children: [
            Image.asset(
              'assets/images/logo_MDO_1.png',
              width: 30,
              height: 30,
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
                ],
              ),
            ),
            const Spacer(),
            const DropdownLang(),
          ],
        ).p(14),
      ],
    );
  }
}
