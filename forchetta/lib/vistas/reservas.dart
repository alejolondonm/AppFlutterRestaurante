import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:forchetta/widgets/wcWidgets.dart';

class Reservas extends StatefulWidget {
  const Reservas({Key? key}) : super(key: key);

  @override
  State<Reservas> createState() => _Reservas();
}

class _Reservas extends State<Reservas> {
  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: TextStyle(
            fontSize: 15,
          ),
        ),
      );

  double screenH = 0.0, screenW = 0.0;
  DateTime fecha = DateTime.now();
  String mes = DateTime.now().month.toString();
  final mis_sedes = ["Laureles", "Poblado", "Rionegro"];
  String? hora, sede;

  final itemsHoras = [
    "3:00 PM",
    "3:30 PM",
    "4:00 PM",
    "4:30 PM",
    "5:00 PM",
    "5:30 PM",
    "6:00 PM",
    "6:30 PM",
    "7:00 PM"
  ];

  @override
  Widget build(BuildContext context) {
    screenH = MediaQuery.of(context).size.height;
    screenW = MediaQuery.of(context).size.width;

    return Scaffold(
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
                image: AssetImage('assets/calendar.png'),
                width: 140,
              ),
              Spacer(flex: 1),
              subTitleText('¡Haz tu reserva!', 'Seriously', 28),
              Spacer(flex: 1),
              subTitleText('Fecha:', 'Seriously', 15),
              Container(
                child: ElevatedButton(
                  child: subTitleText('Selecciona', "Seriously", 20),
                  onPressed: () async {
                    DateTime? fecha2 = await showDatePicker(
                        context: context,
                        initialDate: fecha,
                        firstDate: DateTime(2022),
                        lastDate: DateTime(2023));
                    if (fecha2 == null) return;
                    setState(() => fecha = fecha2);
                  },
                ),
              ),
              subTitleText('${fecha.day}/0${fecha.month}/${fecha.year}',
                  'Seriously', 20),
              SizedBox(
                height: 10,
              ),
              subTitleText('Hora:', 'Seriously', 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(left: 0, top: 0, right: 10, bottom: 0),
                  ),
                  Container(
                    width: 200,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 1),
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFF3A05B), width: 1),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: hora,
                        iconSize: 35,
                        items: itemsHoras.map(buildMenuItem).toList(),
                        onChanged: (value) => setState(() => this.hora = value),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              subTitleText('Sede:', 'Seriously', 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(left: 0, top: 0, right: 10, bottom: 0),
                  ),
                  Container(
                    width: 200,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 1),
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFF3A05B), width: 1),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: sede,
                        iconSize: 35,
                        items: mis_sedes.map(buildMenuItem).toList(),
                        onChanged: (value) => setState(() => this.sede = value),
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(flex: 1),
              largeButton(() {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: subTitleText(
                        '¡Lista tu reserva!\nNoi ti aspetteremo!',
                        'Seriously',
                        15)));
              }, Color(0xFFF3A05B), 'Reservar', 'Seriously', 20, 130, 40),
              Spacer(flex: 1),
            ],
          ),
        ),
      ),
    );
  }
}
