import 'package:flutter/material.dart';
import '/const/app_configs.dart';
import '/const/theme/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogoApp extends StatelessWidget {
  const LogoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/images/logo.png',
          width: AppConfigs.logoSize.w,
          height: AppConfigs.logoSize.w,
        ),
        Text('MDO', style: Styles.mediumTextW700())
      ],
    );
  }
}
