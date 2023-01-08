import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';

import '/const/import_const.dart';
import '/lang/lang_controller.dart';
import '/widgets/images/cus_image_icon.dart';
import '/widgets/loaders.dart';

class AppUtils {
  static final lang = Get.find<LangController>();

  static Future<void> hideLoader() async {
    if (Get.isDialogOpen!) Get.back();
  }

  static Future<void> showLoader() async {
    Get.dialog(
      const Center(child: LoaderCircular()),
      barrierDismissible: false,
    );
  }

  static void showError(String message) {
    if (Get.isDialogOpen!) Get.back();
    Get.snackbar(
      'error'.tr,
      message,
      borderRadius: 0,
      duration: const Duration(seconds: 3),
      colorText: Colors.white,
      backgroundColor: Styles.red1,
      animationDuration: 0.45.seconds,
      forwardAnimationCurve: Curves.fastLinearToSlowEaseIn,
      reverseAnimationCurve: Curves.easeOutExpo,
      overlayColor: Colors.black26,
      overlayBlur: .1,
      margin: const EdgeInsets.symmetric(vertical: 0),
      snackStyle: SnackStyle.FLOATING,
      snackPosition: SnackPosition.BOTTOM,
      padding: EdgeInsets.zero,
      messageText: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const CusImageIcon(asset: 'assets/icons/ic_alert_error.png'),
              const SizedBox(width: 10),
              Text(message, style: Styles.normalTextW600()).expand()
            ],
          ).pSymmetric(h: 22, v: 19),
          Container(height: 3, color: Styles.red2)
        ],
      ),
      titleText: const SizedBox.shrink(),
    );
  }

  static void showSuccess(String message) {
    if (Get.isDialogOpen!) Get.back();
    Get.snackbar(
      'success'.tr,
      message,
      borderRadius: 0,
      colorText: Styles.black1,
      backgroundColor: Styles.green1,
      animationDuration: 0.45.seconds,
      duration: const Duration(seconds: 3),
      forwardAnimationCurve: Curves.fastLinearToSlowEaseIn,
      reverseAnimationCurve: Curves.easeOutExpo,
      overlayColor: Colors.black26,
      overlayBlur: .1,
      margin: const EdgeInsets.symmetric(vertical: 0),
      snackStyle: SnackStyle.FLOATING,
      snackPosition: SnackPosition.BOTTOM,
      padding: EdgeInsets.zero,
      messageText: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const CusImageIcon(asset: 'assets/icons/ic_alert_success.png'),
              const SizedBox(width: 10),
              Text(message, style: Styles.normalTextW600()).expand(),
            ],
          ).pSymmetric(h: 22, v: 19),
          Container(height: 3, color: Styles.green2)
        ],
      ),
      titleText: const SizedBox.shrink(),
    );
  }

  static bool validateSessionTimeout() {
    return true;
  }

  static void logout() async {}

  static Future<DateTime?> datePicker(BuildContext ctx,
      {required DateTime initDate, required String errorFormatText}) async {
    final DateTime? picked = await showDatePicker(
      locale: lang.locale,
      context: ctx,
      initialDate: initDate,
      firstDate: DateTime.now().subtract(const Duration(days: 365 * 10)),
      lastDate: DateTime.now().add(const Duration(days: 365 * 10)),
      errorFormatText: errorFormatText,
    );
    return picked;
  }

  static Future<TimeOfDay?> timePicker(BuildContext ctx, TimeOfDay time) async {
    return await showTimePicker(
      initialTime: time,
      context: ctx,
      builder: (context, child) {
        if (MediaQuery.of(context).alwaysUse24HourFormat) {
          return child!;
        } else {
          return Localizations.override(
            context: context,
            locale: lang.locale,
            child: child,
          );
        }
      },
    );
  }

  ///Format date.
  static String formatDate1(String val) {
    if (val.isEmpty) return '';
    final dateFormat = DateFormat("dd/MM/yyyy HH:mm:ss");
    final dateTime = dateFormat.parse(val);
    return dateFormat.format(dateTime);
  }

  static String formatDate2(DateTime date) {
    return DateFormat("dd/MM/yyyy").format(date);
  }

  static String formatDate3(DateTime date) {
    return DateFormat("ddMMyyyy").format(date);
  }

  static String formatDate4(DateTime date) {
    return DateFormat("HH:mm dd/MM/yyyy").format(date);
  }

  ///Write file.
  static Future<File> writeFile(var data) async {
    Directory tempDir = await getTemporaryDirectory();
    var filePath = tempDir.path + '/file_01.png';
    return File(filePath).writeAsBytes(data);
  }

  static Future<File> writeToFile3(var data, String fileName) async {
    Directory tempDir = await getTemporaryDirectory();
    String tempPath = tempDir.path;
    var filePath = tempPath + '/$fileName';
    return File(filePath).writeAsBytes(data);
  }

  static Future<String> writeFilePdf(Uint8List dataPdf, int id) async {
    Directory tempDir = await getTemporaryDirectory();
    var filePath = tempDir.path + '/file_$id.pdf';
    File filePdf = await File(filePath).writeAsBytes(dataPdf);
    return filePdf.path;
  }

  static Future<void> closeNotify() async {
    await 3.7.delay();
    //Get.back();
  }

  static String getFirstCharacter(String name) {
    if (name.isEmpty) return '';
    String lastWord = name.substring(name.lastIndexOf(" ") + 1);
    return lastWord[0].toUpperCase();
  }

  static String getPlatForm() {
    if (GetPlatform.isAndroid) return 'ANDROID';
    if (GetPlatform.isIOS) return 'IOS';
    return 'WEB';
  }

  ///Error api.
  static void showErrorApi(var result, String nameFunc) {
    if (result != null && result.error.isNotEmpty) {
      AppUtils.showError(result.error);
      return;
    }

    if (result == null) {
      debugPrint('error ---> $nameFunc');
      AppUtils.showError('msg_have_error'.tr);
    }
  }

  static void showMessApi(var result, String nameFunc) {
    if (result != null && result.message.isNotEmpty) {
      AppUtils.showError(result.message);
      return;
    }

    if (result == null) {
      debugPrint('error ---> $nameFunc');
      AppUtils.showError('msg_have_error'.tr);
    }
  }
}
