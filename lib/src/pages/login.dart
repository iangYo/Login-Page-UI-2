import 'package:flutter/material.dart';
import 'package:login_page_2/src/constants/strings.dart';
import 'package:login_page_2/src/shared/widgets/icons.dart';
import 'package:login_page_2/src/shared/widgets/input.dart';
import 'package:login_page_2/src/shared/widgets/type-input.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFF5B473),
                  Color(0xFFF1A761),
                  Color(0xFFE09347),
                  Color(0xFFE58C39),
                ],
                stops: [0.1, 0.4, 0.7, 0.9],
              ),
            ),
          ),
          Container(
            height: double.infinity,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 120,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'OpenSans',
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  input(
                    Strings.labelTextEmail,
                    icons(Icons.email),
                    Strings.textHintEmail,
                    false,
                    typeInput(TextInputType.emailAddress),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  input(
                    Strings.labelTextPassword,
                    icons(Icons.lock),
                    Strings.textHintPassword,
                    true,
                    typeInput(TextInputType.text),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
