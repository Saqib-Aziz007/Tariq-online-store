import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/utils.dart';
import '../../widgets/general_exception_widget.dart';
import 'first_controller.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'.tr),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Utils.showLanguageDialog(context),
        child: const Icon(Icons.g_translate_sharp),
      ),
      body: GeneralExceptionWidget(
        exceptionMessage: 'No internet'.tr,
        onPress: () {},
      ),
    );
  }
}
