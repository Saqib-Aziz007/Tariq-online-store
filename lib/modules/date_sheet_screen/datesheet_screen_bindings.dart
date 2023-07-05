import 'package:flutter_getx_mvvm_template/modules/date_sheet_screen/datesheet_screen_controller.dart';
import 'package:flutter_getx_mvvm_template/services/logger_service/basic_logger_service.dart';
import 'package:flutter_getx_mvvm_template/services/logger_service/logger_service.dart';
import 'package:get/get.dart';

class DateSheetScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DateSheetScreenController());
    Get.lazyPut<LoggerService>(() => BasicLoggerService());
  }
}
