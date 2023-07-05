import 'package:flutter_getx_mvvm_template/modules/result_screen/result_screen_controller.dart';
import 'package:flutter_getx_mvvm_template/services/logger_service/logger_service.dart';
import 'package:get/get.dart';

import '../../services/logger_service/basic_logger_service.dart';

class ResultScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ResultScreenController());
    Get.lazyPut<LoggerService>(() => BasicLoggerService());
  }
}
