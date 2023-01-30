import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:training_getx/const/import_const.dart';
import 'package:training_getx/page/setting/setting_controller.dart';

class SettingOption extends GetView<SettingController> {
  const SettingOption(
      {Key? key,
      required this.settingName,
      required this.settingImage,
      required this.onTap,
      this.isLogout = false})
      : super(key: key);
  final String settingName;
  final String settingImage;
  final VoidCallback onTap;
  final bool isLogout;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: Get.width,
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
                settingName.tr,
                style: Styles.normalTextW700(),
              ),
              const Spacer(),
              Visibility(
                visible: !isLogout,
                child: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Styles.grey10,
                  size: 24,
                ),
              ),
            ],
          ),
        ),
      ).pSymmetric(h: 11),
    );
  }
}
