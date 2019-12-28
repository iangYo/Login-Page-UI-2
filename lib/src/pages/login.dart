import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_page_2/main.dart';
import 'package:login_page_2/src/constants/strings.dart';
import 'package:login_page_2/src/constants/styles.dart';
import 'package:login_page_2/src/shared/widgets/icons.dart';
import 'package:login_page_2/src/shared/widgets/input.dart';
import 'package:login_page_2/src/shared/widgets/social-btn.dart';
import 'package:login_page_2/src/shared/widgets/type-input.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
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
                      ), // Input email
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
                      Container(
                        child: Row(
                          children: <Widget>[
                            Theme(
                              data: ThemeData(
                                unselectedWidgetColor: Colors.white,
                              ),
                              child: Checkbox(
                                value: _rememberMe,
                                checkColor: Colors.orangeAccent,
                                activeColor: Colors.white,
                                onChanged: (value) {
                                  setState(() {
                                    _rememberMe = value;
                                  });
                                },
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "Remember me",
                                style: Style.labelStyle,
                              ),
                            ),
                            FlatButton(
                              onPressed: () =>
                                  print('Esqueceu sua senha pressionada'),
                              padding: EdgeInsets.only(right: 0),
                              child: Text(
                                "Esqueceu sua senha?",
                                style: Style.labelStyle,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 25),
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
                            "LOGIN",
                            style: TextStyle(
                              color: Color(0xFFAB7B52),
                              fontFamily: 'OpenSans',
                              fontSize: 18,
                              letterSpacing: 1.5,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            "- OU -",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Entre com",
                            style: Style.labelStyle,
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            socialbtn(
                              () => print('Login com Facebook'),
                              AssetImage('assets/icons/facebook.png'),
                            ),
                            socialbtn(
                              () => print('Login com Gmail'),
                              AssetImage('assets/icons/facebook.png'),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () => print('Botão de cadastro pressionado'),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Novo aqui? ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text: "Crie uma conta",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
