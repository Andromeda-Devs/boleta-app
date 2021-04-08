import 'package:flutter/material.dart';
import 'package:boletaapp/Screens/Login/components/background.dart';
import 'package:boletaapp/Screens/Signup/signup_screen.dart';
import 'package:boletaapp/components/already_have_an_account_acheck.dart';
import 'package:boletaapp/components/rounded_button.dart';
import 'package:boletaapp/components/rounded_input_field.dart';
import 'package:boletaapp/components/rounded_password_field.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Iniciar Sesión",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            Image.asset(
              "images/logo2.jpg",
              width: size.width * 2,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Rut",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "Iniciar Sesión",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
