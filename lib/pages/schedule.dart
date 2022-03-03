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
          children: [
            DaysWidget(),
            DaysWidget(),
            DaysWidget(),
            DaysWidget(),
            DaysWidget(),
            DaysWidget(),
          ],
        ),
      ),
    );
  }
}
