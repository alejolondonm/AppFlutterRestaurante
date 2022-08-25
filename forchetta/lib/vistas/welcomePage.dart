import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:forchetta/vistas/menuPage.dart';
import 'package:forchetta/vistas/signInPage.dart';
import 'package:forchetta/vistas/signUpPage.dart';
import 'package:forchetta/widgets/wcWidgets.dart';

class WelcomePage extends StatelessWidget {
  WelcomePage({Key? key}) : super(key: key);

  double screenH = 0.0, screenW = 0.0;

  @override
  Widget build(BuildContext context) {
    screenH = MediaQuery.of(context).size.height;
    screenW = MediaQuery.of(context).size.width;

    return Center(
      child: Container(
        width: screenW * 0.95,
        height: screenH * 0.92,
        decoration: BoxDecoration(
            color: Color(0xFFFFEED5), borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Spacer(flex: 2),
            titleText("Forchetta", 'Lobster'),
            subTitleText("Comida Italiana", 'seriously', 30),
            Spacer(flex: 1),
            const Image(
              image: AssetImage("assets/pizza2.png"),
              width: 180,
            ),
            const Spacer(flex: 1),
            SizedBox(
              width: 180,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Usuario",
                ),
              ),
            ),
            SizedBox(
              width: 180,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Contraseña",
                ),
              ),
            ),
            Spacer(flex: 1),
            largeButton(() {
              //Function Sign In
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SignInPage();
                  },
                ),
              );
            }, Color(0xFFF3A05B), "Iniciar Sesión", "seriously", 15, 180, 40),
            Spacer(flex: 1),
            largeButton(() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return MenuPage();
                  },
                ),
              );
            }, Colors.transparent, "Ver Menú", "seriously", 15, 180, 40),
            Spacer(flex: 1),
            largeButton(() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SignUpPage();
                  },
                ),
              );
            }, Color(0xFFF3A05B), "Registrarse", "seriously", 15, 180, 40),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
