import 'package:flutter/material.dart';
import 'package:flutter_getx_mvvm_template/constants/app_colors.dart';

class RoundFilledButtonWidget extends StatelessWidget {
  const RoundFilledButtonWidget({
    super.key,
    this.width,
    required this.title,
    this.onPress,
  });

  final double? width;
  final String title;
  final void Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: FilledButton(
          onPressed: onPress,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .displaySmall
                  ?.copyWith(color: AppColors.white),
            ),
          )),
    );
  }
}
