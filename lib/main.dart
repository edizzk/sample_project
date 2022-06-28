import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';

import 'service/localization.dart';
import 'view/crew_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'project_title'.tr,
      translations: Localization(),
     // locale: const Locale('en', 'US'),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'UK'),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const CrewView(title: 'project_title'),
    );
  }
}