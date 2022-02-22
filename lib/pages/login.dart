import 'package:bodybuilder/pages/signup.dart';
import 'package:bodybuilder/utils/functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import '../utils/theme.dart';

class Login extends StatelessWidget {
  var checkValue = false.obs;
  final TextEditingController nationalCodeTxt = TextEditingController();
  final TextEditingController passwordTxt = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void checkChanged(bool? value) {
      checkValue.value = value!;
    }

    var isLoading = false.obs;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "صفحه ورود",
          style: Get.theme.primaryTextTheme.headline6,
        ),
      ),
      body: Container(
        child: ListView(
          children: [
            // SizedBox(
            //   height: Get.height / 9,
            // ),

            // Image.network(
            //   //"https://images.everydayhealth.com/images/plank-jack.gif?w=9999999",
            //   "https://www.stretchmarks.org/wp-content/uploads/2016/08/icon-bodybuilding.png",
            //   height: 190,
            //   width: 250,
            // ),

            Image.asset(
              "assets/pictures/bodybuilding.png",
              height: 190,
              width: 250,
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: TextFormField(
                autofocus: false,
                cursorColor: Colors.blue,
                cursorWidth: 1.2,
                textAlign: TextAlign.left,
                style: TextStyleX.style,
                controller: nationalCodeTxt,
                decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.person),
                  //hintText: "نام کاربری خود را وارد کنید",
                  labelStyle: TextStyleX.style,

                  labelText: "شماره ملی خود را وارد کنید.",
                  helperText: "شماره ملی را بدون صفر وارد کنید.",

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            Obx(
              () => Padding(
                padding: const EdgeInsets.all(30),
                child: TextFormField(
                  autofocus: false,
                  controller: passwordTxt,
                  cursorColor: Colors.blue,
                  cursorWidth: 1.2,
                  textAlign: TextAlign.left,
                  style: TextStyleX.style,
                  obscureText: !checkValue.value,
                  textDirection: TextDirection.ltr,
                  decoration: InputDecoration(
                    //prefixIcon: Icon(Icons.lock),
                    suffixIcon: const Icon(Icons.lock_rounded),
                    //hintText: "گذرواژه خود را وارد کنید",
                    labelStyle: TextStyleX.style,
                    labelText: "گذرواژه خود را وارد کنید",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
            ),
            Obx(
              () => Padding(
                padding: const EdgeInsets.fromLTRB(80, 10, 80, 10),
                child: CheckboxListTile(
                  activeColor: Colors.green,
                  value: checkValue.value,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  onChanged: checkChanged,
                  title: const Text(
                    "نمایش گذرواژه",
                    style: TextStyleX.style,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Container(
                margin: const EdgeInsets.fromLTRB(50, 20, 50, 20),
                height: 60,
                child: Obx(
                  () => ElevatedButton(
                    onPressed: isLoading.value
                        ? null
                        : () async {
                            if (nationalCodeTxt.text == "" ||
                                passwordTxt.text == "") {
                              Get.snackbar("وضعیت", "لطفا فیلدها را پر کنید.");
                            } else {
                              isLoading.value = true;
                              await Future.delayed(
                                  const Duration(seconds: 3),
                                  () => Requests.login(
                                      nationalCodeTxt.text, passwordTxt.text));
                              isLoading.value = false;
                            }
                          },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    child: Obx(
                      () => isLoading.value
                          ? const SpinKitChasingDots(
                              color: Colors.blue,
                              size: 20,
                            )
                          : const Text(
                              "ورود",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w100,
                                fontFamily: 'Vazir',
                              ),
                            ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Directionality(
                        textDirection: TextDirection.rtl,
                        child: SignUpPage(),
                      ),
                    ),
                  );
                },
                child: const Text(
                  "حساب کاربری ندارید؟ ثبت نام",
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 13,
                      fontFamily: 'Vazir'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
