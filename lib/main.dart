import 'package:flutter/material.dart';
import 'package:login_page_2/src/pages/cadastro/sign_up.dart';
import 'package:login_page_2/src/pages/login/sign_in.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page 2',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        fontFamily: 'OpenSans',
      ),
      //home: Cadastro(),
      home: Login(),
    );
  }
}