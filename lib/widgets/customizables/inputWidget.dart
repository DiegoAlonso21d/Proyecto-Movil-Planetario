import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  final String? placeholder; // Cambiado a String opcional
  final Color backgroundColor;
  final BorderRadius borderRadius;
  final IconData? leftIcon;
  final double width;
  final double height;
  final Color? iconColor;
  final Color? iconBackgroundColor;
  final TextInputType inputType;
  final bool isPassword;
  final double? sizeIcon;

  final double? widthIconContainer;
  final double? heightIconContainer;

  final double? marginIcon;
  final double? borderWidth; // Nuevo parámetro para el ancho del borde
  final Color? borderColor; // Nuevo parámetro para el color del borde

  final TextEditingController? textController;

  const InputWidget({
    Key? key,
    this.placeholder = "", // Asignado un valor por defecto
    required this.width,
    required this.height,
    this.backgroundColor = Colors.grey,
    this.borderRadius = const BorderRadius.all(Radius.circular(8.0)),
    this.leftIcon,
    this.iconColor,
    this.iconBackgroundColor,
    this.inputType = TextInputType.text,
    this.isPassword = false,
    this.sizeIcon,
    this.widthIconContainer,
    this.heightIconContainer,
    this.marginIcon,
    this.borderWidth, // Nuevo parámetro
    this.borderColor, // Nuevo parámetro
    this.textController,
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
          width: borderWidth ?? 0.0,
          color: borderColor ?? Colors.black, // Color por defecto es negro
        ),
      ),
      padding: EdgeInsets.all(marginIcon ?? 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (leftIcon != null)
            Container(
              width: widthIconContainer,
              height: heightIconContainer,
              alignment: Alignment.center,
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: iconBackgroundColor ?? Colors.transparent,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Icon(
                leftIcon,
                size: sizeIcon ?? 40,
                color: iconColor,
              ),
            ),
          SizedBox(width: 8.0),
          Expanded(
            child: TextField(
              controller: textController,
              textAlign: TextAlign.left,
              keyboardType: inputType,
              obscureText: isPassword,
              style: TextStyle(fontWeight: FontWeight.w900),
              decoration: InputDecoration(
                hintText: placeholder,
                hintStyle: TextStyle(color: Colors.black),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
