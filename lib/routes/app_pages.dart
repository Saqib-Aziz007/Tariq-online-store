import 'package:flutter_getx_mvvm_template/modules/assignment_screen/assignment_screen.dart';
import 'package:flutter_getx_mvvm_template/modules/assignment_screen/assignment_screen_bindings.dart';
import 'package:flutter_getx_mvvm_template/modules/date_sheet_screen/datesheet_screen.dart';
import 'package:flutter_getx_mvvm_template/modules/date_sheet_screen/datesheet_screen_bindings.dart';
import 'package:flutter_getx_mvvm_template/modules/fee_screen/fee_screen.dart';
import 'package:flutter_getx_mvvm_template/modules/fee_screen/fee_screen_bindings.dart';
import 'package:flutter_getx_mvvm_template/modules/home_screen/home_screen.dart';
import 'package:flutter_getx_mvvm_template/modules/home_screen/home_screen_binding.dart';
import 'package:flutter_getx_mvvm_template/modules/quiz_screen/quiz_screen.dart';
import 'package:flutter_getx_mvvm_template/modules/quiz_screen/quiz_screen_bindings.dart';
import 'package:flutter_getx_mvvm_template/modules/result_screen/result_screen_bindings.dart';
import 'package:flutter_getx_mvvm_template/modules/view_profile_screen/view_profile_bindings.dart';
import 'package:flutter_getx_mvvm_template/modules/view_profile_screen/view_profile_screen.dart';
import 'package:get/get.dart';

import '../modules/initial/initial_binding.dart';
import '../modules/initial/initial_page.dart';
import '../modules/login_screen/login_screen.dart';
import '../modules/login_screen/login_screen_binding.dart';
import '../modules/result_screen/result_screen.dart';
import '../routes/app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.initial,
      page: () => InitialPage(),
      binding: InitialBinding(),
    ),
    GetPage(
      name: AppRoutes.loginScreen,
      page: () => LoginScreen(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: AppRoutes.homeScreen,
      page: () => HomeScreen(),
      binding: HomeScreenBinding(),
    ),
    GetPage(
      name: AppRoutes.viewProfileScreen,
      page: () => ViewProfileScreen(),
      binding: ViewProfileBindings(),
    ),
    GetPage(
      name: AppRoutes.assignmentsScreen,
      page: () => AssignmentScreen(),
      binding: AssignmentBindings(),
    ),
    GetPage(
      name: AppRoutes.feeScreen,
      page: () => FeeScreen(),
      binding: FeeScreenBindings(),
    ),
    GetPage(
      name: AppRoutes.dateSheetScreen,
      page: () => DateSheetScreen(),
      binding: DateSheetScreenBindings(),
    ),
    GetPage(
      name: AppRoutes.resultScreen,
      page: () => ResultScreen(),
      binding: ResultScreenBindings(),
    ),
    GetPage(
      name: AppRoutes.quizScreen,
      page: () => QuizScreen(),
      binding: QuizScreenBindings(),
    ),
  ];
}
