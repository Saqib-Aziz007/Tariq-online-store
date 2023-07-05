import 'package:flutter_getx_mvvm_template/services/logger_service/logger_service.dart';
import 'package:get/get.dart';

import '../../services/logger_service/basic_logger_service.dart';
import 'login_screen_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
    Get.lazyPut<LoggerService>(() => BasicLoggerService());
  }
}
