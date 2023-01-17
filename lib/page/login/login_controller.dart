import 'package:get/get.dart';
import 'package:training_getx/lang/lang_controller.dart';

import '/routes/routes.dart';
import 'const/login_const.dart';
import 'widgets/sheet_forgot_pass.dart';

class LoginController extends GetxController {
//Handle lang.
  final lang = Get.find<LangController>();
  List<String> listLang = <String>['VI', 'EN'];
  late String langValue;
  RxBool showPass = true.obs;

  void onChangedLang(String? val) {
    langValue = val!;
    if (val == "VI") {
      lang.changeLang('vi', 'VN');
    }else{
      lang.changeLang('en', 'US');
    }

    update([LoginConst.idLang]);
  }

  void onChangedShowPassword() {
    showPass.value = !showPass.value;
  }

  void showSheetForgotPass() {
    Get.bottomSheet(const SheetForgotPass());
  }

  void login() {
    Get.toNamed(Routes.root);
  }

  @override
  void onInit() {
    super.onInit();
    langValue = listLang[0];
  }
}
