import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';
import '/const/theme/styles.dart';

class ItemDropDown extends StatelessWidget {
  const ItemDropDown({
    Key? key,
    this.height = 48,
    this.bgColor = Colors.white,
    this.itemColor = Styles.black2,
    required this.name,
  }) : super(key: key);
  final double height;
  final String name;
  final Color bgColor, itemColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      color: bgColor,
      child: Row(
        children: [
          Text(
            name.tr,
            style: Styles.normalTextW600(color: itemColor),
          ).expand(),
        ],
      ),
    );
  }
}
