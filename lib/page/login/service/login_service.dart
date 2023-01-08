import 'package:get/get.dart';
import '/const/import_const.dart';

class LoginService {
  final _service = Get.find<BaseApi>();
  final _store = Get.find<StorageService>();

// Future<LoginModel?> login(String request) async {
//   try {
//     var response = await _service.postRequest(
//       url: CommonApi.login,
//       data: request,
//     );
//     if (response != null) {
//       return LoginModel.fromJson(response.data);
//     }
//   } catch (e) {
//     debugPrint(e.toString());
//   }
//   return null;
// }
//
// Future<ProfileModel?> getProfile() async {
//   try {
//     var response = await _service.getRequest(
//       url: CommonApi.getProfile,
//       token: _store.apiToken,
//     );
//
//     if (response != null) {
//       return ProfileModel.fromJson(response.data);
//     }
//   } catch (e) {
//     debugPrint(e.toString());
//   }
//   return null;
// }

}
