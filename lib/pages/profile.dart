import 'package:bodybuilder/utils/theme.dart';
import 'package:bodybuilder/utils/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:hive/hive.dart';

class ProfilePage extends StatelessWidget {
  TextEditingController name = TextEditingController(text: "محمدعلی");
  TextEditingController family = TextEditingController(text: "علی‌زاده");
  TextEditingController nationalCode =
      TextEditingController(text: "2360123123");
  TextEditingController phone = TextEditingController(text: "09321231232");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "پروفایل من",
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
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(30),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: CustomedTextField(
                          label: "نام شما",
                          style: TextStyleX.style,
                          icon: Icon(Icons.person),
                          controller: name,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: CustomedTextField(
                          icon: Icon(Icons.person),
                          label: "نام خانوادگی شما",
                          style: TextStyleX.style,
                          controller: family,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(30),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: CustomedTextField(
                          icon: Icon(Icons.perm_identity),
                          label: "شماره ملی شما",
                          style: TextStyleX.style,
                          controller: nationalCode,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: CustomedTextField(
                          icon: Icon(Icons.phone),
                          label: "شماره موبایل شما",
                          style: TextStyleX.style,
                          controller: phone,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(30),
            child: CustomedButton(),
          ),
        ],
      ),
    );
  }
}
