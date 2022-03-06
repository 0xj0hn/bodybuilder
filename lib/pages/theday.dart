import 'package:bodybuilder/bottomsheet/bottomsheet.dart';
import 'package:bodybuilder/pages/schedule.dart';
import 'package:bodybuilder/utils/theme.dart';
import 'package:bodybuilder/utils/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TheDayPage extends StatelessWidget {
  String? title;
  TheDayPage({this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title!,
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
      body: ListView(children: [
        IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TitleSub(
                title: "۳",
                subtitle: "تعداد حرکات",
              ),
              const VerticalDivider(
                width: 10,
                indent: 15,
                endIndent: 15,
              ),
              TitleSub(
                title: "۲۵ دقیقه",
                subtitle: "زمان",
              ),
            ],
          ),
        ),
        ActivityWidget(
          onPressed: () {
            Get.bottomSheet(
              CustomizedBottomSheet(),
              // isScrollControlled: true,
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
              ),
            );
          },
        ),
        ActivityWidget(
          onPressed: () {},
        ),
        ActivityWidget(
          onPressed: () {},
        ),
      ]),
    );
  }
}

class TitleSub extends StatelessWidget {
  @override
  String? title;
  String? subtitle;
  TitleSub({this.title = "بدون مقدار", this.subtitle = "بدون مقدار"});
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(children: [
        Text(
          title!,
          style: TextStyleX.boldStyle,
        ),
        Text(subtitle!),
      ]),
    );
  }
}
