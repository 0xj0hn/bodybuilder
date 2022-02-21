import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class DashboardPage extends StatelessWidget {
  @override
  List choices = ["پروفایل", "برنامه‌ها", "برنامه هر روز", "خروج"];
  List icons = [
    Icon(Icons.verified_user),
    Icon(Icons.schedule),
    Icon(Icons.schedule),
    Icon(Icons.exit_to_app),
  ];
  List ops = [
    () => null,
    () => null,
    () => null,
    () => Get.off(() => Login())
  ]; //some functions which can be helpful in GridView.count
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "لیست آیتم‌ها",
          style: Get.theme.primaryTextTheme.headline6,
        ),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 4.0,
        mainAxisSpacing: 8.0,
        children: List.generate(
            choices.length,
            (index) => Choice(
                  icon: icons[index],
                  text: choices[index],
                  onPressed: ops[index],
                )),
      ),
    );
  }
}

class Choice extends StatelessWidget {
  String? text;
  Widget? icon;
  Function()? onPressed;
  Choice({this.text, this.icon, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Material(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: InkWell(
          borderRadius: BorderRadius.circular(30),
          onTap: onPressed,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              icon!,
              Padding(
                padding: EdgeInsets.all(10),
                child: Text("$text"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
