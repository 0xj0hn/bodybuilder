import 'package:bodybuilder/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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

class ScheduleWidget extends StatelessWidget {
  @override
  Function()? onPressed;
  String? scheduleName;
  String? startedDate;
  String? weeksCount;
  String? coachName;
  String? type;
  ScheduleWidget(
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
    return Padding(
      padding: EdgeInsets.all(20),
      child: Material(
        //color: Color(0xffcfd0da),
        //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: Card(
          color: Color(0xffeaf1ff),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
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
      ),
    );
  }
}

class DayWidget extends StatelessWidget {
  String? daytitle;
  String? timeAverage;
  String? activityNumbers;
  Function()? onPressed;
  DayWidget(
      {this.activityNumbers, this.daytitle, this.timeAverage, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Card(
        color: Color(0xffeaf1ff),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: onPressed,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "روز " + daytitle!,
                  style: TextStyleX.boldStyle,
                ),
                Text(
                    "تعداد حرکات: $activityNumbers\nزمان تقریبی: $timeAverage"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ActivityWidget extends StatelessWidget {
  String? daytitle;
  String? timeAverage;
  String? activityNumbers;
  Function()? onPressed;
  ActivityWidget(
      {this.activityNumbers, this.daytitle, this.timeAverage, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topRight,
      margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
      child: Material(
        child: Card(
          color: Color(0xffeaf1ff),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: onPressed,
            child: Padding(
              padding: EdgeInsets.all(40),
              child: Container(
                margin: EdgeInsets.fromLTRB(60, 10, 10, 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                        "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi.pinimg.com%2Foriginals%2F69%2Fb9%2Fcf%2F69b9cf8b3c0a6d971ce0e1ac83a17c03.gif&f=1&nofb=1"),
                    Container(
                      child: Column(
                        children: [
                          Text("درجا زدن"),
                          Text("00:20"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
