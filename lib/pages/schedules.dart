import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SchedulesPage extends StatelessWidget {
  const SchedulesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "برنامه‌ها",
          style: Get.theme.primaryTextTheme.headline6,
        ),
      ),
      body: Center(child: Text("Hello world")),
    );
  }
}
