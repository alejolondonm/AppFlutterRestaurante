import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:forchetta/vistas/menuPage.dart';
import 'package:forchetta/vistas/reservas.dart';
import 'package:forchetta/vistas/sedes.dart';
import 'package:forchetta/widgets/wcWidgets.dart';

class SignInPage extends StatelessWidget {
  SignInPage({Key? key}) : super(key: key);

  double screenH = 0.0, screenW = 0.0;

  @override
  Widget build(BuildContext context) {
    screenH = MediaQuery.of(context).size.height;
    screenW = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: Container(
          width: screenW * 0.95,
          height: screenH * 0.89,
          decoration: BoxDecoration(
              color: Color(0xFFFFEED5),
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              Spacer(flex: 1),
              Image(
                image: AssetImage("assets/italy.png"),
                width: 180,
              ),
              Spacer(flex: 1),
              titleText("Ben arrivato!", 'Lobster'),
              subTitleText("¡Ven a nuestros restaurantes!", 'seriously', 18),
              Spacer(flex: 1),
              largeButton(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Reservas();
                    },
                  ),
                );
              }, Color(0xFFF3A05B), "Hacer Reserva", "seriously", 15),
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
              }, Colors.transparent, "Ver Menú", "seriously", 15),
              Spacer(flex: 1),
              largeButton(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Sedes();
                    },
                  ),
                );
              }, Color(0xFFF3A05B), "Nuestras Sedes", "seriously", 15),
              Spacer(flex: 1),
            ],
          ),
        ),
      ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          backgroundColor: Color(0xFFF3A05B),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new),
            color: Colors.black,
            onPressed: () => Navigator.pop(context, true),
          ),
        ),
      ),
    );
  }
}
