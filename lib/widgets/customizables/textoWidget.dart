import 'package:flutter/material.dart';

class TextoWidget extends StatelessWidget {
  final String texto;
  final Color textColor;
  final double fontSize;
  final bool fontBold;

  const TextoWidget(
      {super.key,
      required this.texto,
      required this.textColor,
      required this.fontSize,
      required this.fontBold});

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      style: TextStyle(
        color: textColor,
        fontSize: fontSize,
        fontWeight: fontBold ? FontWeight.bold : FontWeight.normal,
        
      ),
    );
  }
}
