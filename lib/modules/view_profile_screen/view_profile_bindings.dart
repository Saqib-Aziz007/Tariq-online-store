import 'package:flutter_getx_mvvm_template/modules/view_profile_screen/view_profile_controller.dart';
import 'package:get/get.dart';

import '../../services/logger_service/basic_logger_service.dart';
import '../../services/logger_service/logger_service.dart';

class ViewProfileBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ViewProfileController());
    Get.lazyPut<LoggerService>(() => BasicLoggerService());
  }
}
