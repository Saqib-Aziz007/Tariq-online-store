import 'package:flutter/material.dart';
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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      translations: LanguageTranslations(),
      locale: const Locale('en','US'),
      initialRoute: AppRoutes.initial,
      getPages: AppPages.pages,
    );
  }
}
