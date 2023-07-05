import 'package:flutter/material.dart';
import 'package:flutter_getx_mvvm_template/constants/constants.dart';
import 'package:flutter_getx_mvvm_template/constants/image_assets.dart';
import 'package:get/get.dart';

import '../../constants/app_colors.dart';
import '../../utils/utils.dart';
import 'login_screen_controller.dart';

class LoginScreen extends GetView<LoginController> {
  LoginScreen({super.key});

  final _loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Utils.showLanguageDialog(context),
        child: const Icon(Icons.g_translate_sharp),
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(0, 70, 0, 0),
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              ImageAssets.lemon,
              height: 120,
              width: 120,
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Hi',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        color: AppColors.white,
                      ),
                ),
                const SizedBox(
                  width: 6,
                ),
                Text(
                  'Student',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        color: AppColors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
            Text(
              'Sign in to continue',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AppColors.white,
                  ),
            ),
            const SizedBox(
              height: 24,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(kDefaultPadding),
                decoration: const BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(36),
                    topRight: Radius.circular(36),
                  ),
                ),
                child: Form(
                  key: _loginController.loginFormKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller:
                            _loginController.usernameTextController.value,
                        decoration:
                            const InputDecoration(labelText: 'Registration #:'),
                      ),
                      Obx(
                        () => TextFormField(
                          controller:
                              _loginController.passwordTextController.value,
                          obscureText: _loginController.passwordObscured.value,
                          onFieldSubmitted: (value) =>
                              _loginController.signIn(),
                          obscuringCharacter: '*',
                          decoration: InputDecoration(
                            labelText: 'Password:',
                            suffix: GestureDetector(
                              onTap: _loginController.changeObscure,
                              child: _loginController.passwordObscured.value
                                  ? const Icon(Icons.visibility)
                                  : const Icon(Icons.visibility_off),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      SizedBox(
                        height: 56,
                        width: MediaQuery.of(context).size.width * 0.6,
                        child: FilledButton(
                            onPressed: _loginController.signIn,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'SIGN IN ',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall
                                      ?.copyWith(color: AppColors.white),
                                ),
                                const Icon(Icons.arrow_forward_outlined)
                              ],
                            )),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
