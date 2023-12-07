import 'package:flutter/material.dart';

class TextAreaPrueba extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final double width;
  final double height;
  final Color backgroundColor;
  final BorderRadius borderRadius;
  final double borderWidth;
  final Color borderColor;
  final EdgeInsets padding;
  final TextStyle textStyle;
  final TextInputType keyboardType;
  final bool obscureText;

  const TextAreaPrueba({
    Key? key,
    required this.hintText,
    this.controller,
    required this.width,
    required this.height,
    this.backgroundColor = Colors.white,
    this.borderRadius = const BorderRadius.all(Radius.circular(8.0)),
    this.borderWidth = 1.0,
    this.borderColor = Colors.black,
    this.padding = const EdgeInsets.all(8.0),
    this.textStyle = const TextStyle(),
    this.keyboardType = TextInputType.multiline,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: borderRadius,
        border: Border.all(
          width: borderWidth,
          color: borderColor,
        ),
      ),
      padding: padding,
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: obscureText,
        maxLines: null,
        style: textStyle,
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}