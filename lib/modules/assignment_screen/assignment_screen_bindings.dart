import 'package:flutter_getx_mvvm_template/modules/assignment_screen/assignment_screen_controller.dart';
import 'package:get/get.dart';

import '../../services/logger_service/basic_logger_service.dart';
import '../../services/logger_service/logger_service.dart';

class AssignmentBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AssignmentScreenController());
    Get.lazyPut<LoggerService>(() => BasicLoggerService());
  }
}
