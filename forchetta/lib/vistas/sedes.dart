import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:forchetta/vistas/reservas.dart';
import 'package:forchetta/widgets/wcWidgets.dart';

class Sedes extends StatelessWidget {
  Sedes({Key? key}) : super(key: key);
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
          child: Row(
            children: [
              Spacer(flex: 1),
              Column(
                children: [
                  Spacer(flex: 1),
                  Image(
                    image: AssetImage("assets/pin.png"),
                    width: 80,
                  ),
                  Spacer(flex: 1),
                  Image(
                    image: AssetImage("assets/pin.png"),
                    width: 80,
                  ),
                  Spacer(flex: 1),
                  Image(
                    image: AssetImage("assets/pin.png"),
                    width: 80,
                  ),
                  Spacer(flex: 1),
                ],
              ),
              Column(
                children: [
                  Spacer(flex: 1),
                  titleText("Laureles", 'seriously'),
                  subTitleText('Carrera 81 # 37 - 100', 'seriously', 20),
                  Spacer(flex: 1),
                  titleText("Poblado", 'seriously'),
                  subTitleText('Calle 10 # 43E - 135', 'seriously', 20),
                  Spacer(flex: 1),
                  titleText("Rionegro", 'seriously'),
                  subTitleText('Calle 31 # 44 - 239', 'seriously', 20),
                  Spacer(flex: 1),
                ],
              ),
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
