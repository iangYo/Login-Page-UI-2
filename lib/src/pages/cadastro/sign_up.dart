import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_page_2/src/constants/strings.dart';
import 'package:login_page_2/src/shared/widgets/button.dart';
import 'package:login_page_2/src/shared/widgets/icons.dart';
import 'package:login_page_2/src/shared/widgets/input.dart';
import 'package:login_page_2/src/shared/widgets/link_signInUp.dart';
import 'package:login_page_2/src/shared/widgets/main_text.dart';

class Cadastro extends StatelessWidget {
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
                      mainText("Cadastro"),
                      SizedBox(
                        height: 50,
                      ),
                      input(
                        icons(Icons.email),
                        Strings.textHintEmail,
                        false,
                        TextInputType.emailAddress,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      input(icons(Icons.lock), Strings.textHintPassword, true,
                          TextInputType.text),
                      SizedBox(
                        height: 30,
                      ),
                      input(
                        icons(Icons.lock),
                        Strings.textHintConfPassword,
                        true,
                        TextInputType.text,
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      button("Cadastrar"),
                      SizedBox(
                        height: 50,
                      ),
                      GestureDetector(
                        onTap: () => {
                          Navigator.pop(context),
                        },
                        child: linkSwitch("Tem uma conta? ", "Faça login"),
                      )
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
