import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/constants.dart';

class CustomDesignScaffold extends StatelessWidget {
  const CustomDesignScaffold({
    super.key,
    this.body,
    this.appBarTitle = 'Title',
    this.actions,
  });

  final Widget? body;
  final String appBarTitle;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        iconTheme: const IconThemeData(color: AppColors.white),
        title: Text(
          appBarTitle,
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(color: AppColors.white),
        ),
        actions: actions,
      ),
      body: Container(
        padding: const EdgeInsets.all(kDefaultPadding),
        decoration: const BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
        ),
        child: body,
      ),
    );
  }
}
