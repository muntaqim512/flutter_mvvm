import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/res/Localizations/languages.dart';
import 'package:getx_mvvm/res/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      translations: languages(),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: AppRoutes.appRoutes(),
    );
  }
}
