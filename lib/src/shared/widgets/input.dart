import 'package:flutter/material.dart';
import 'package:login_page_2/src/constants/styles.dart';

Widget input(String labelText, Widget icon, String textHint, bool hideText, TextInputType typeInput) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        labelText,
        style: Style.labelStyle,
      ),
      SizedBox(
        height: 10,
      ),
      Container(
        alignment: Alignment.centerLeft,
        decoration: Style.boxDecorationStyle,
        height: 60,
        child: TextField(
          obscureText: hideText,
          keyboardType: typeInput,
          style: TextStyle(
            color: Colors.white,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14),
            prefixIcon: icon,
            hintText: textHint,
            hintStyle: Style.hintTextStyle,
          ),
        ),
      )
    ],
  );
}
