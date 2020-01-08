import 'package:flutter/material.dart';

Widget button(String _text) {
  return Container(
    width: double.infinity,
    child: RaisedButton(
      onPressed: () => print('Botão de login pressionado'),
      elevation: 5,
      padding: EdgeInsets.all(15),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      color: Colors.white,
      child: Text(
        _text,
        style: TextStyle(
          color: Color(0xFFAB7B52),
          fontSize: 18,
          letterSpacing: 1.5,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
