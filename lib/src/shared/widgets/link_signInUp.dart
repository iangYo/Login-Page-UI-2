import 'package:flutter/material.dart';

Widget linkSiSu(String _textOne, _textTwo) {
  return GestureDetector(
    onTap: () => print('Botão de cadastro pressionado'),
    child: RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: _textOne,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
          TextSpan(
            text: _textTwo,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
  );
}
