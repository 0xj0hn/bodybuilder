import 'package:bodybuilder/pages/theday.dart';
import 'package:bodybuilder/utils/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Schedule extends StatelessWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "برنامه",
          style: Theme.of(context).primaryTextTheme.headline6,
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.blue,
          ),
          onPressed: () => Get.back(),
        ),
      ),
      body: Align(
        child: ListView(
            children: List.generate(11, (index) {
          return DayWidget(
            activityNumbers: (index + 1).toString(),
            daytitle: (index + 1).toString(),
            timeAverage: "2:0$index:00",
            onPressed: () {
              Get.to(
                () => TheDayPage(
                  title: "روز " + (index + 1).toString(),
                ),
              );
            },
          );
        })),
      ),
    );
  }
}
