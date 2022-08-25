import 'package:flutter/material.dart';

GestureDetector largeButton(VoidCallback function, Color bgColor, String text,
    String tipo_letra, double tam) {
  return GestureDetector(
    onTap: function,
    child: Container(
      width: 180,
      height: 40,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1,
        ),
      ),
      child: Center(
          child: Text(
        text,
        style: TextStyle(
          fontFamily: tipo_letra,
          fontSize: tam,
          fontWeight: FontWeight.w300,
        ),
        textAlign: TextAlign.center,
      )),
    ),
  );
}

Text titleText(String text, String text2) {
  return Text(
    text,
    style: TextStyle(
      fontFamily: text2,
      fontWeight: FontWeight.bold,
      fontSize: 50,
    ),
    textAlign: TextAlign.center,
  );
}

Text subTitleText(String text, String text2, double tam) {
  return Text(
    text,
    style: TextStyle(
      fontFamily: text2,
      fontSize: tam,
      fontWeight: FontWeight.w300,
    ),
    textAlign: TextAlign.center,
  );
}

Text subTitleText2(String text, double tam) {
  return Text(
    text,
    style: TextStyle(
      fontSize: tam,
      fontWeight: FontWeight.w300,
    ),
    textAlign: TextAlign.center,
  );
}
