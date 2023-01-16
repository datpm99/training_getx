import 'package:get/get.dart';

import '/routes/routes.dart';
import 'const/login_const.dart';

class LoginController extends GetxController {
//Handle lang.
  List<String> listLang = <String>['VI', 'EN'];
  late String langValue;
  RxBool showPass = true.obs;

  void onChangedLang(String? val) {
    langValue = val!;
    update([LoginConst.idLang]);
  }

  void onChangedShowPassword(){
    showPass.value = !showPass.value;
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
