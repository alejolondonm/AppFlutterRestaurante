import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

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
}
