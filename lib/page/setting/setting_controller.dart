import 'package:get/get.dart';
import 'package:training_getx/lang/lang_controller.dart';
import 'package:training_getx/page/setting/widgets/assist_customer_dialog.dart';
import 'package:training_getx/services/storage/storage_service.dart';
import 'package:training_getx/widgets/dialogs/lang_dialog.dart';

class SettingController extends GetxController {
  RxBool turnOn = true.obs;
  final store = Get.find<StorageService>();
  RxString valueLang = ''.obs;
  final lang = Get.find<LangController>();

  void onChangedSwitch() {
    turnOn.value = !turnOn.value;
  }

  void showLangDialog() {
    Get.dialog(LangDialog(onChanged: onChangedLang, value: valueLang));
  }

  void showAssistCusDialog() {
    Get.dialog(const AssistCustomerDialog());
  }

  void onChangedLang(String? val) {
    valueLang.value = val!;
    if (val == "vi") {
      lang.changeLang('vi', 'VN');
    } else {
      lang.changeLang('en', 'US');
    }
  }

  @override
  void onInit() {
    super.onInit();
    valueLang.value = 'en';
    if (store.language == 'vi_VN') {
      valueLang.value = 'vi';
    }
  }
}
