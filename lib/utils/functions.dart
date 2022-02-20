import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class Requests {
  var url = "localhost";
  static login(username, password) async {
    Get.snackbar("وضعیت", "ورود با موفقیت انجام شد...");
    Get.to(() => const Scaffold());
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
