import 'package:flutter/material.dart';
import 'package:boletaapp/Screens/Login/login_screen.dart';
import 'package:boletaapp/Screens/Signup/signup_screen.dart';
import 'package:boletaapp/Screens/Welcome/components/background.dart';
import 'package:boletaapp/components/rounded_button.dart';
import 'package:boletaapp/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Bienvenido a Aidy",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.05),
            Image.asset(
              "images/logo2.jpg",
              width: size.width * 2,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "Iniciar Sesión",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "Registrate",
              color: kPrimaryLightColor,
              textColor: Colors.black,
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
