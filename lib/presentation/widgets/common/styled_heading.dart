import 'package:flutter/material.dart';

Widget styledHeading({text,double? fontSize}) {
  return Row(
    children: [
      Text(
        text[0].toString().toUpperCase(),
        style: TextStyle(
          fontFamily: 'Dirtyline',
          fontSize: fontSize ?? 40 + 5
        ),
      ),
      Text(
        text.toString().substring(1).toLowerCase(),
        textAlign: TextAlign.end,
        style: TextStyle(
          fontSize: fontSize ?? 40
        ),
      )
    ],
  );
}
