import 'package:flutter/material.dart';
import 'package:flutter_getx_mvvm_template/constants/app_colors.dart';
import 'package:flutter_getx_mvvm_template/theme/color_schemes.g.dart';
import 'package:flutter_getx_mvvm_template/theme/typography.dart';
import 'package:get/get.dart';

import 'localization/language_translations.dart';
import 'routes/app_pages.dart';
import 'routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Boilerplate Getx MVVM Template',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: lightColorScheme,
        textTheme: textTheme,
        scaffoldBackgroundColor: AppColors.primary,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: darkColorScheme,
        textTheme: textTheme,
      ),
      themeMode: ThemeMode.light,
      translations: LanguageTranslations(),
      locale: const Locale('en', 'US'),
      initialRoute: AppRoutes.initial,
      getPages: AppPages.pages,
    );
  }
}
