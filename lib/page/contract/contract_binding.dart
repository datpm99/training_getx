import 'package:get/get.dart';
import 'contract_controller.dart';

class ContractBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ContractController());
  }
}
