import 'package:bodybuilder/utils/functions.dart';
import 'package:bodybuilder/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

class SignUpPage extends StatelessWidget {
  @override
  var checkValue = false.obs;
  TextEditingController nationalCodeTxt = TextEditingController();
  TextEditingController nameTxt = TextEditingController();
  TextEditingController familyTxt = TextEditingController();
  TextEditingController phoneTxt = TextEditingController();
  TextEditingController passTxt = TextEditingController();
  TextEditingController repassTxt = TextEditingController();
  FocusNode nameF = FocusNode();
  FocusNode familyF = FocusNode();
  FocusNode bluckF = FocusNode();
  FocusNode vahedF = FocusNode();
  FocusNode phoneF = FocusNode();
  FocusNode passF = FocusNode();
  FocusNode repassF = FocusNode();
  var isLoading = false.obs;
  @override
  Widget build(BuildContext context) {
    void checkChanged(bool? value) {
      checkValue.value = value!;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "صفحه ثبت نام",
          style: Get.theme.primaryTextTheme.headline6,
        ),
        leading: IconButton(
          color: Colors.blue,
          icon: Icon(Icons.arrow_back),
          tooltip: "برگشت",
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(30),
              child: TextField(
                autofocus: false,
                cursorColor: Colors.blue,
                cursorWidth: 1.2,
                textAlign: TextAlign.left,
                style: TextStyleX.style,
                controller: nationalCodeTxt,
                onSubmitted: (S) {
                  nameF.requestFocus();
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.person),
                    labelStyle: TextStyleX.style,
                    labelText: "شمارهٔ ملی خود را وارد کنید.",
                    helperText: "لطفا شمارهٔ ملی را بدون صفر وارد کنید.",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: TextField(
                autofocus: false,
                focusNode: nameF,
                controller: nameTxt,
                cursorColor: Colors.blue,
                cursorWidth: 1.2,
                textAlign: TextAlign.right,
                style: TextStyleX.style,
                onSubmitted: (S) {
                  familyF.requestFocus();
                },
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.info),
                  labelStyle: TextStyleX.style,
                  labelText: "نام خود را وارد کنید",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: TextField(
                autofocus: false,
                focusNode: familyF,
                controller: familyTxt,
                cursorColor: Colors.blue,
                cursorWidth: 1.2,
                textAlign: TextAlign.right,
                onSubmitted: (S) {
                  phoneF.requestFocus();
                },
                style: TextStyleX.style,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.info),
                  labelStyle: TextStyleX.style,
                  labelText: "نام خانوادگی خود را وارد کنید",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: TextField(
                autofocus: false,
                focusNode: phoneF,
                controller: phoneTxt,
                cursorColor: Colors.blue,
                cursorWidth: 1.2,
                textAlign: TextAlign.left,
                style: TextStyleX.style,
                keyboardType: TextInputType.phone,
                onSubmitted: (S) {
                  passF.requestFocus();
                },
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.phone),
                  labelStyle: TextStyleX.style,
                  labelText: "شماره تلفن خود را وارد کنید",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  helperText: "مثلا 09384260524",
                ),
              ),
            ),
            Obx(
              () => Padding(
                padding: EdgeInsets.all(30),
                child: TextField(
                  autofocus: false,
                  focusNode: passF,
                  controller: passTxt,
                  cursorColor: Colors.blue,
                  cursorWidth: 1.2,
                  textAlign: TextAlign.left,
                  style: TextStyleX.style,
                  obscureText: !checkValue.value,
                  textDirection: TextDirection.ltr,
                  onSubmitted: (S) {
                    repassF.requestFocus();
                  },
                  decoration: InputDecoration(
                    //prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.lock_rounded),
                    //hintText: "گذرواژه خود را وارد کنید",
                    labelStyle: TextStyleX.style,
                    labelText: "گذرواژه را وارد کنید",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
            ),
            Obx(
              () => Padding(
                padding: EdgeInsets.all(30),
                child: TextField(
                  autofocus: false,
                  focusNode: repassF,
                  controller: repassTxt,
                  cursorColor: Colors.blue,
                  cursorWidth: 1.2,
                  textAlign: TextAlign.left,
                  style: TextStyleX.style,
                  obscureText: !checkValue.value,
                  textDirection: TextDirection.ltr,
                  decoration: InputDecoration(
                    //prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.lock_rounded),
                    //hintText: "گذرواژه خود را وارد کنید",
                    labelStyle: TextStyleX.style,
                    labelText: "گذرواژه را مجددا وارد کنید",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
            ),
            Obx(
              () => Padding(
                padding: EdgeInsets.fromLTRB(80, 10, 80, 10),
                child: CheckboxListTile(
                  value: checkValue.value,
                  activeColor: Colors.green,
                  onChanged: checkChanged,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  title: Text(
                    "نمایش گذرواژه: ",
                    style: TextStyleX.style,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: Container(
                margin: EdgeInsets.fromLTRB(50, 20, 50, 20),
                height: 60,
                child: ElevatedButton(
                  onPressed: () async {
                    final validate = 0;
                    if (validate == -1) {
                      return;
                    }
                    isLoading.value = true;
                    final signUp = await Requests.signup(
                        nameTxt.text,
                        familyTxt.text,
                        nationalCodeTxt.text,
                        passTxt,
                        phoneTxt);
                    isLoading.value = false;

                    // final Functions
                  },
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  )),
                  child: Obx(
                    () => isLoading.value
                        ? SpinKitChasingDots(size: 20, color: Colors.black)
                        : Text(
                            "ثبت نام",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("حساب کاربری دارید؟ ورود",
                    style:
                        TextStyle(fontWeight: FontWeight.w300, fontSize: 13)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
