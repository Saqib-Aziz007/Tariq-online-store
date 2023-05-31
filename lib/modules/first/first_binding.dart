import 'package:flutter_getx_mvvm_template/services/logger_service/logger_service.dart';
import 'package:get/get.dart';
import 'first_controller.dart';

class FirstBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FirstController());
  }
}
