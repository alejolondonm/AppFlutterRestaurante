import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:forchetta/widgets/wcWidgets.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);

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
              subTitleText("Ben Arrivato!", 'Seriously', 30),
              subTitleText("Llena todos los campos \npara crear tu cuenta",
                  'Seriously', 15),
              Spacer(flex: 1),
              SizedBox(
                width: 180,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Nombre Completo",
                  ),
                ),
              ),
              Spacer(flex: 1),
              SizedBox(
                width: 180,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Cédula",
                  ),
                ),
              ),
              Spacer(flex: 1),
              SizedBox(
                width: 180,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Nombre de usuario",
                  ),
                ),
              ),
              Spacer(flex: 1),
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
              SizedBox(
                width: 180,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Correo",
                  ),
                ),
              ),
              Spacer(flex: 1),
              SizedBox(
                width: 180,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Celular",
                  ),
                ),
              ),
              Spacer(flex: 1),
              largeButton(() {}, Color(0xFFF3A05B), "Crea tu cuenta",
                  'Seriously', 18, 200, 40),
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
