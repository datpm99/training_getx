import 'package:flutter/material.dart';
import '/const/theme/styles.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({
    Key? key,
    this.size = 40,
    this.name = '',
    this.color = Styles.primaryColor,
    this.fontSize = 18,
  }) : super(key: key);
  final double size, fontSize;
  final String name;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: CircleAvatar(
        backgroundColor: color,
        child: Text(
          name,
          style: Styles.normalText(color: Colors.white, size: fontSize),
        ),
      ),
    );
  }
}
