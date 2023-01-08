import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '/const/theme/styles.dart';

class DefaultOutlineButton extends StatelessWidget {
  const DefaultOutlineButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.color = Styles.primaryColor,
    this.colorText = Styles.primaryColor,
    this.width = 150,
    this.height = 48,
    this.disable = false,
  }) : super(key: key);
  final String text;
  final VoidCallback onTap;
  final Color color, colorText;
  final double width, height;
  final bool disable;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width.w,
      height: height.h,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          primary: (disable) ? Styles.grey16 : color,
          shape: Styles.borderDialog(radius: 30),
          side: BorderSide(
              width: 1, color: (disable) ? Styles.grey16 : colorText),
          backgroundColor: Colors.white,
          elevation: (disable) ? 0 : 2,
        ),
        onPressed: onTap,
        child: AutoSizeText(
          text.tr.toUpperCase(),
          style: Styles.normalTextW700(
              color: (disable) ? Styles.grey16 : colorText),
          maxLines: 1,
          minFontSize: 8,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
