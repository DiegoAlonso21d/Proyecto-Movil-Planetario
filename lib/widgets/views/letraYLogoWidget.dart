import 'package:flutter/material.dart';

class LetraYLogoWidget extends StatelessWidget {
  final double widthLetra;
  final double widthLogo;
  final double separacion;

  const LetraYLogoWidget(
      {super.key,
      required this.widthLetra,
      required this.widthLogo,
      required this.separacion});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(children: [
        Image(
            width: widthLogo,
            image: AssetImage("assets/logoApp/logoBlanco.png")),
        SizedBox(
          height: separacion,
        ),
        Image(
            width: widthLetra,
            image: AssetImage("assets/logoApp/planetarioLetraFondoOscuro.png"))
      ]),
    );
  }
}
