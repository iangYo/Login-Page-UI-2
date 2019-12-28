import 'package:flutter/material.dart';

class Style {

  static final labelStyle = TextStyle(
    color: Colors.white54,
    fontWeight: FontWeight.w700,
    fontFamily: 'OpenSans',
  );

  static final boxDecorationStyle = BoxDecoration(
    color: Color(0xFFF1A761),
    borderRadius: BorderRadius.circular(10.0),
    boxShadow: [
      BoxShadow(
        color: Colors.black12,
        blurRadius: 6.0,
        offset: Offset(0, 2),
      ),
    ],
  );

  static final hintTextStyle = TextStyle(
    color: Colors.white70,
    fontFamily: 'OpenSans',
  );
}
