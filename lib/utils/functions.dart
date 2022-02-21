import 'package:bodybuilder/pages/dashboard.dart';
import 'package:bodybuilder/pages/schedules.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:hive/hive.dart';

class Requests {
  var url = "localhost";
  static login(username, password) async {
    Hive.box("auth").put("is_loggined", true);
    Get.snackbar("وضعیت", "ورود با موفقیت انجام شد...");
    Get.off(() => DashboardPage());
  }

  static signup(name, family, nationalCode, password, phonenumber) async {
    Get.snackbar("وضعیت", "ثبت نام با موفقیت انجام شد...");
    Get.to(() => Scaffold(
          appBar: AppBar(
            title: Text("منو"),
          ),
        ));
  }
}
