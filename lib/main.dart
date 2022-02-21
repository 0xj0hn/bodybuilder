import 'package:bodybuilder/pages/dashboard.dart';
import 'package:bodybuilder/pages/login.dart';
import 'package:bodybuilder/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:get/get.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox("auth");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Hive.box("auth").get("is_loggined") ? DashboardPage() : Login(),
      locale: Locale('fa', 'IR'),
      theme: ThemeX.lightTheme,
      debugShowCheckedModeBanner: false,
    );
  }
}
