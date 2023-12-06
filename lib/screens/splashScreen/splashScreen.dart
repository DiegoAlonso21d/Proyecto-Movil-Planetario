import 'package:animate_do/animate_do.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import 'package:flutter_app_planetario/screens/screens.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: AnimatedSplashScreen(
        duration: 1200,
        splash: ZoomIn(
          duration: Duration(milliseconds: 1000),
          delay: Duration(milliseconds: 0),
          from: 1.8,
          child: Image(
              image: AssetImage("../assets/logoApp/letraYLogoFondoOscuro.png")),
        ),
        nextScreen: LoginScreen(),
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: Colors.black,
      ),
    );
  }
}
