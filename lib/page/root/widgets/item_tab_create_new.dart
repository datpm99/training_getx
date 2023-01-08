import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/const/import_const.dart';

class ItemTabCreateNew extends StatelessWidget {
  const ItemTabCreateNew({
    Key? key,
    required this.img,
    required this.name,
  }) : super(key: key);
  final String img, name;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(img, width: 28, height: 28),
        SizedBox(
          width: 100,
          child: Text(name.tr, style: Styles.normalTextW600()),
        ).pOnly(left: 10, right: 10),
        const Icon(Icons.chevron_right, color: Styles.black2),
      ],
    ).pSymmetric(v: 10);
  }
}
