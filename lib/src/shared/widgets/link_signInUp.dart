import 'package:flutter/material.dart';

Widget linkSwitch(String textOne, textTwo) {
  return RichText(
    text: TextSpan(
      children: [
        TextSpan(
          text: textOne,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
        TextSpan(
          text: textTwo,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}
