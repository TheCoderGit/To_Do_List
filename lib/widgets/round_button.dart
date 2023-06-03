import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Round_button extends StatelessWidget {
  final String text;
  final Color color_text;
  final Color background_color;
  final Function() onPress;

  Round_button(
      {super.key,
      required this.text,
      required this.color_text,
      required this.background_color,
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 40.0),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(15.0)),
        color: background_color,
      ),
      height: 50.0,
      child: TextButton(
        onPressed: onPress,
        child: Text(
          text,
          style: TextStyle(
              color: color_text, fontSize: 22, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
