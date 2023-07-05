import 'package:flutter/material.dart';
import 'package:flutter_getx_mvvm_template/modules/fee_screen/fee_screen_controller.dart';
import 'package:flutter_getx_mvvm_template/modules/home_screen/home_screen_controller.dart';
import 'package:flutter_getx_mvvm_template/modules/login_screen/login_screen_controller.dart';
import 'package:flutter_getx_mvvm_template/routes/app_routes.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../assignment_screen/assignment_screen_controller.dart';

class ViewProfileController extends GetxController {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  final usernameTextController = TextEditingController().obs;
  final passwordTextController = TextEditingController().obs;

  logout() async {
    final SharedPreferences prefs = await _prefs;
    await prefs.clear();
    Get.delete<LoginController>();
    Get.delete<HomeController>();
    Get.delete<AssignmentScreenController>();
    Get.delete<FeeScreenController>();
    Get.delete<ViewProfileController>();
    Get.offNamed(AppRoutes.loginScreen);
  }
}
