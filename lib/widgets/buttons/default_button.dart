import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/const/theme/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:auto_size_text/auto_size_text.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.color = Styles.purple1,
    this.width = 150,
    this.height = 48,
    this.fontSize = 14,
    this.radius = 30,
    this.colorText = Colors.white
  }) : super(key: key);
  final String text;
  final VoidCallback? onTap;
  final Color color, colorText;
  final double width, height, fontSize, radius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width.w,
      height: height.h,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          primary: color,
          shape: Styles.borderDialog(radius: radius),
        ),
        child: AutoSizeText(
          text.tr.toUpperCase(),
          style: Styles.normalTextW700(color: colorText, size: fontSize),
          maxLines: 1,
          minFontSize: 8,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
