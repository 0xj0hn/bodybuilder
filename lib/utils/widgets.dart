import 'package:flutter/material.dart';

class CustomedTextField extends StatelessWidget {
  @override
  TextStyle? style = TextStyle();
  String? label;
  String? helper;
  Icon? icon;
  TextEditingController? controller;
  CustomedTextField({
    this.label,
    this.style,
    this.icon,
    this.helper,
    this.controller,
  });

  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      cursorColor: Colors.blue,
      cursorWidth: 1.2,
      textAlign: TextAlign.right,
      style: style,
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: icon,
        //hintText: "نام کاربری خود را وارد کنید",
        labelStyle: style,

        labelText: label,
        helperText: helper,
        helperMaxLines: 3,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}

class CustomedButton extends StatelessWidget {
  @override
  Widget? child;
  EdgeInsets? padding;
  CustomedButton({this.child, this.padding});
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            padding: MaterialStateProperty.all(padding)),
        child: child,
      ),
    );
  }
}

class Schedule extends StatelessWidget {
  @override
  Function()? onPressed;
  String? scheduleName;
  String? startedDate;
  String? weeksCount;
  String? coachName;
  String? type;
  Schedule(
      {this.onPressed,
      this.scheduleName,
      this.startedDate,
      this.weeksCount,
      this.coachName,
      this.type});

  Widget build(BuildContext context) {
    // return Container(
    //   padding: EdgeInsets.all(30),
    //   child: Card(
    //     child: Text("hello"),
    //   ),
    // );
    scheduleName = "فلان";
    startedDate = "۱۴۰۰/۱۲/۲";
    weeksCount = "3";
    coachName = "علی رنجبر";
    type = "دراز و نشست";
    String text = """نام برنامه: $scheduleName
نام مربی: $coachName
تعداد هفته: $weeksCount
تاریخ شروع: $startedDate
نوع: $type
""";
    return Material(
      //color: Color(0xffcfd0da),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Card(
        color: Color(0xffeaf1ff),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: InkWell(
          focusColor: Color(0xffcfd0da),
          borderRadius: BorderRadius.circular(30),
          onTap: onPressed,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
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
