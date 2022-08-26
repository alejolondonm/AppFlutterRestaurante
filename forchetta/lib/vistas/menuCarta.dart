import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:forchetta/vistas/reservas.dart';
import 'package:forchetta/widgets/wcWidgets.dart';

class MenuCarta extends StatefulWidget {
  const MenuCarta({Key? key}) : super(key: key);

  @override
  State<MenuCarta> createState() => _MenuCarta();
}

class _MenuCarta extends State<MenuCarta> {
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
                    image: AssetImage("assets/pizzam.png"),
                    width: 90,
                  ),
                  Spacer(flex: 1),
                  Image(
                    image: AssetImage("assets/pizza4.png"),
                    width: 90,
                  ),
                  Spacer(flex: 1),
                  Image(
                    image: AssetImage("assets/pizza6.png"),
                    width: 90,
                  ),
                  Spacer(flex: 1),
                  Image(
                    image: AssetImage("assets/spaghetti.png"),
                    width: 90,
                  ),
                  Spacer(flex: 1),
                  Image(
                    image: AssetImage("assets/lasagna.png"),
                    width: 90,
                  ),
                  Spacer(flex: 1),
                  Spacer(flex: 1),
                  Spacer(flex: 1),
                  Spacer(flex: 1),
                  Spacer(flex: 1),
                  Spacer(flex: 1),
                ],
              ),
              Column(
                children: [
                  Spacer(flex: 1),
                  subTitleText(" Pizza margarita", 'seriously', 15),
                  subTitleText(r'31.000$', 'seriously', 15),
                  Spacer(flex: 1),
                  subTitleText(" Pizza tres carnes  ", 'seriously', 15),
                  subTitleText(r'31.000$', 'seriously', 15),
                  Spacer(flex: 1),
                  subTitleText(" Pizza mariscos  ", 'seriously', 15),
                  subTitleText(r'48.000$', 'seriously', 15),
                  Spacer(flex: 1),
                  subTitleText(" Espaguetis Boloñesa       ", 'seriously', 15),
                  subTitleText(r'22.000$', 'seriously', 15),
                  Spacer(flex: 1),
                  subTitleText(" Lasaña Carbonara   ", 'seriously', 15),
                  subTitleText(r'22.000$', 'seriously', 15),
                  Spacer(flex: 1),
                  largeButton(() {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: subTitleText(
                            '¡Platos exitosamente agregados!\nbuon appetito!',
                            'Seriously',
                            15)));
                  }, Color(0xFFF3A05B), 'Añadir al Carrito', 'Seriously', 15,
                      160, 30),
                  Spacer(flex: 1),
                ],
              ),
              Column(
                children: [
                  Spacer(flex: 1),
                  addCarta(() {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: subTitleText(
                          'Pizza margarita agregada al carrito',
                          'Seriously',
                          15),
                      duration: Duration(seconds: 1),
                    ));
                  }),
                  Spacer(flex: 1),
                  addCarta(() {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: subTitleText(
                          'Pizza tres carnes agregada al carrito',
                          'Seriously',
                          15),
                      duration: Duration(seconds: 1),
                    ));
                  }),
                  Spacer(flex: 1),
                  addCarta(() {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: subTitleText(
                          'Pizza mariscos agregada al carrito',
                          'Seriously',
                          15),
                      duration: Duration(seconds: 1),
                    ));
                  }),
                  Spacer(flex: 1),
                  addCarta(() {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: subTitleText(
                          'Espaguetis boloñesa agregados al carrito',
                          'Seriously',
                          15),
                      duration: Duration(seconds: 1),
                    ));
                  }),
                  Spacer(flex: 1),
                  addCarta(() {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: subTitleText(
                          'Lasaña carbonara agregada al carrito',
                          'Seriously',
                          15),
                      duration: Duration(seconds: 1),
                    ));
                  }),
                  Spacer(flex: 1),
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
