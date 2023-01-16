import 'package:flutter/material.dart';
import 'package:training_getx/const/import_const.dart';

class SettingOption extends StatelessWidget {
  const SettingOption(
      {Key? key, required this.settingName, required this.settingImage})
      : super(key: key);
  final String settingName;
  final String settingImage;
  // final Widget settingButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: Styles.white2,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Image.asset(
              settingImage,
              height: 24,
              width: 24,
            ),
            const SizedBox(width: 5),
            Text(
              settingName,
              style: Styles.normalTextW700(),
            ),
            Spacer(),
           const Icon(Icons.arrow_forward_ios_rounded, color: Styles.grey10, size: 24,),
          ],
        ),
      ),
    );
  }
}
