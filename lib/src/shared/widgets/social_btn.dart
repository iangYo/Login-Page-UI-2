import 'package:flutter/material.dart';

Widget socialbtn(Function _onTap, AssetImage logo) {
  return GestureDetector(
    onTap: _onTap,
    child: Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        image: DecorationImage(
          image: logo,
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 2),
            color: Colors.black26,
            blurRadius: 6,
          ),
        ],
      ),
    ),
  );
}
