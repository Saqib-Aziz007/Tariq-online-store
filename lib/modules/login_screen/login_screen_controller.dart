import 'package:flutter/cupertino.dart';
import 'package:flutter_getx_mvvm_template/constants/storage_constants.dart';
import 'package:flutter_getx_mvvm_template/utils/utils.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../routes/app_routes.dart';

class LoginController extends GetxController {
  // final _logger = Get.find<LoggerService>();
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  final loginFormKey = GlobalKey<FormState>();
  final usernameTextController = TextEditingController().obs;
  final passwordTextController = TextEditingController().obs;
  final passwordObscured = false.obs;

  @override
  void onInit() {
    // Initialization
    super.onInit();
  }

  @override
  void onClose() {
    // Called when closed
    super.onClose();
  }

  changeObscure() {
    passwordObscured.value = !passwordObscured.value;
  }

  Future signIn() async {
    final SharedPreferences prefs = await _prefs;
    if (usernameTextController.value.text.toLowerCase() == 'admin' &&
        passwordTextController.value.text.toLowerCase() == 'admin') {
      await prefs.setString(StorageConstants.token, 'admin');
      await prefs.setBool(StorageConstants.firstTimeOpen, true);
      Get.toNamed(AppRoutes.homeScreen);
    } else {
      Utils.showToast('Invalid credentials');
    }
  }
}
