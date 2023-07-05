import 'package:flutter_getx_mvvm_template/modules/quiz_screen/quiz_screen_controller.dart';
import 'package:flutter_getx_mvvm_template/services/logger_service/logger_service.dart';
import 'package:get/get.dart';

import '../../services/logger_service/basic_logger_service.dart';

class QuizScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QuizScreenController());
    Get.lazyPut<LoggerService>(() => BasicLoggerService());
  }
}
