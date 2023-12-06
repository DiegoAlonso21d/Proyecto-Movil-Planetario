import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String textoButton;
  final Color? backgroundColorButton;
  final Color? colorTextButton;
  final bool isFontBold;
  final double widthButton;
  final double heightButton;

  final bool borderRadiusAll;

  final double? borderRadius;

  final double? borderRadiusBottomLeft;
  final double? borderRadiuosBottomRigth;
  final double? borderRadiusTopLeft;
  final double? borderRadiusTopRigth;

  final Color? colorBorder;
  final double? widthBorder;

  final double? fontSizeText;

  final void Function()? ontap;

  const ButtonWidget({
    super.key,
    required this.textoButton,
    this.backgroundColorButton,
    this.colorTextButton,
    required this.isFontBold,
    required this.widthButton,
    required this.heightButton,
    this.borderRadius,
    this.ontap,
    required this.borderRadiusAll,
    this.borderRadiusBottomLeft,
    this.borderRadiuosBottomRigth,
    this.borderRadiusTopLeft,
    this.borderRadiusTopRigth,
    this.colorBorder,
    this.widthBorder,
    this.fontSizeText,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
                color: colorBorder ?? Colors.transparent,
                width: widthBorder ?? 0),
            borderRadius: borderRadiusAll
                ? BorderRadius.all(Radius.circular(borderRadius ?? 0))
                : BorderRadius.only(
                    bottomLeft: Radius.circular(borderRadiusBottomLeft ?? 0),
                    bottomRight: Radius.circular(borderRadiuosBottomRigth ?? 0),
                    topLeft: Radius.circular(borderRadiusTopLeft ?? 0),
                    topRight: Radius.circular(borderRadiusTopRigth ?? 0)),
            color: backgroundColorButton),
        alignment: Alignment.center,
        width: widthButton,
        height: heightButton,
        child: Text(
          textoButton,
          style: TextStyle(
              fontSize: fontSizeText ?? 15,
              color: colorTextButton,
              fontWeight: isFontBold ? FontWeight.bold : FontWeight.normal),
        ),
      ),
    );
  }
}
