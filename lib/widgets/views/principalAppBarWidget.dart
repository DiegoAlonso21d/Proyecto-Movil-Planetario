import 'package:flutter/material.dart';

class PrincipalAppBarWidget extends StatelessWidget {
  final Color colorAppBar;
  final double widthAppBar;
  final double heightAppBar;
  final double widthLogo;
  final double heightLogo;
  final String imageLogo;
  final double widthOpciones;
  final List<Widget> listaOpciones;

  const PrincipalAppBarWidget(
      {super.key,
      required this.colorAppBar,
      required this.widthAppBar,
      required this.heightAppBar,
      required this.widthLogo,
      required this.heightLogo,
      required this.imageLogo,
      required this.widthOpciones,
      required this.listaOpciones});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        color: colorAppBar,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 4,
            blurRadius: 5,
            offset: Offset(0, 1),
          ),
        ],
      ),
      width: widthAppBar,
      height: heightAppBar,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image(
              width: widthLogo,
              height: heightLogo,
              image: AssetImage(imageLogo)),
          Container(
            width: widthOpciones,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: listaOpciones),
          ),
        ],
      ),
    );
  }
}
