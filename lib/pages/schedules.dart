import 'package:bodybuilder/pages/schedule.dart';
import 'package:bodybuilder/utils/widgets.dart';
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
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.blue,
          ),
          onPressed: () => Get.back(),
        ),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (cnx, i) {
            return ScheduleWidget(
              onPressed: () {
                Get.to(() => Schedule());
              },
            );
          },
          itemCount: 6,
        ),
      ),
    );
  }
}
