import 'package:flutter/material.dart';
import 'package:flutter_getx_mvvm_template/constants/app_colors.dart';
import 'package:flutter_getx_mvvm_template/constants/constants.dart';
import 'package:flutter_getx_mvvm_template/constants/image_assets.dart';
import 'package:get/get.dart';

import 'initial_controller.dart';

class InitialPage extends GetView<InitialController> {
  InitialPage({super.key});

  final _initialController = Get.put(InitialController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<InitialController>(
      builder: (controller) => Scaffold(
        backgroundColor: AppColors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(ImageAssets.splash),
              const SizedBox(
                height: kDefaultPadding,
              ),
              Text(
                _initialController.isLoggedIn.value
                    ? 'Welcome\n Back'
                    : 'Welcome',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.displayMedium,
              )
            ],
          ),
        ),
      ),
    );
  }
}
