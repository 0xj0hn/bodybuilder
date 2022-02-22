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
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        padding: EdgeInsets.all(30),
      ),
      child: null,
    );
  }
}
