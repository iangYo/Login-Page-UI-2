import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_page_2/src/constants/strings.dart';
import 'package:login_page_2/src/constants/styles.dart';
import 'package:login_page_2/src/pages/cadastro/sign_up.dart';
import 'package:login_page_2/src/shared/widgets/button.dart';
import 'package:login_page_2/src/shared/widgets/icons.dart';
import 'package:login_page_2/src/shared/widgets/input.dart';
import 'package:login_page_2/src/shared/widgets/link_signInUp.dart';
import 'package:login_page_2/src/shared/widgets/main_text.dart';
import 'package:login_page_2/src/shared/widgets/social_btn.dart';

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
                      mainText("Login"),
                      SizedBox(
                        height: 50,
                      ),
                      input(
                        icons(Icons.email),
                        Strings.textHintEmail,
                        false,
                        TextInputType.emailAddress,
                      ), // Input email
                      SizedBox(
                        height: 30,
                      ),
                      input(
                        icons(Icons.lock),
                        Strings.textHintPassword,
                        true,
                        TextInputType.text,
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
                                  setState(
                                    () {
                                      _rememberMe = value;
                                    },
                                  );
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
                      SizedBox(
                        height: 30,
                      ),
                      button("LOGIN"),
                      SizedBox(
                        height: 30,
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            "- ou entre com -",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 20,
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
                        onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Cadastro()),
                          ),
                        },
                        child: linkSwitch("Novo aqui? ", "Crie uma conta"),
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
