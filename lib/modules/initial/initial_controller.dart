import 'dart:async';

import 'package:flutter_getx_mvvm_template/constants/storage_constants.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../routes/app_routes.dart';
import '../../services/navigation_service/navigation_service.dart';
import '../../services/register_service/register_service.dart';

class InitialController extends GetxController {
  final _register = Get.find<RegisterService>();
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  RxBool isLoggedIn = false.obs;

  @override
  void onInit() {
    super.onInit();
    _register.registerServices();
    _register.initServices().then((value) {});
    checkUserAuthentication();
  }

  void checkUserAuthentication() async {
    final navigation = Get.find<NavigationService>();
    final SharedPreferences prefs = await _prefs;
    final String? token = prefs.getString(StorageConstants.token);
    late String page;
    if (token != null) {
      page = AppRoutes.homeScreen;
      isLoggedIn.value = true;
    } else {
      page = AppRoutes.loginScreen;
      isLoggedIn.value = false;
    }
    Timer(const Duration(seconds: 3), () {
      navigation.offNamed(page);
    });
  }
}
