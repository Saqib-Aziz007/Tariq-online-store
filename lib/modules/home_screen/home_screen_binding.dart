import 'package:flutter_getx_mvvm_template/modules/home_screen/home_screen_controller.dart';
import 'package:get/get.dart';

import '../../services/logger_service/basic_logger_service.dart';
import '../../services/logger_service/logger_service.dart';

class HomeScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    Get.lazyPut<LoggerService>(() => BasicLoggerService());
  }
}
