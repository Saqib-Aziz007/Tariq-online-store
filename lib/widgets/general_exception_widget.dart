import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/app_colors.dart';

class GeneralExceptionWidget extends StatefulWidget {
  const GeneralExceptionWidget(
      {Key? key, this.onPress, required this.exceptionMessage})
      : super(key: key);

  final void Function()? onPress;
  final String exceptionMessage;

  @override
  State<GeneralExceptionWidget> createState() => _GeneralExceptionWidgetState();
}

class _GeneralExceptionWidgetState extends State<GeneralExceptionWidget> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            Icons.cloud_off,
            size: 120,
            color: AppColors.red,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Center(
              child: Text(
                'No internet'.tr,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
          ),
          SizedBox(
            height: height * 0.15,
          ),
          ElevatedButton(
              onPressed: () {},
              child: Text(
                'Retry'.tr,
                style: Theme.of(context).textTheme.headlineLarge,
              ))
        ],
      ),
    );
  }
}
