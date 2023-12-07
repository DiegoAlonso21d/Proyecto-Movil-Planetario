import 'package:flutter/material.dart';
import 'package:flutter_app_planetario/routes/routesName.dart';
import 'package:flutter_app_planetario/widgets/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(alignment: Alignment.center, children: [
          _FondoImage(height: height, width: width),
          SingleChildScrollView(
            child: Container(
              alignment: Alignment.center,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _Logo(width: width, height: height),
                    _FormInicioSesion(height: height, width: width),
                    TextoWidget(
                        texto: "Iniciar con :",
                        textColor: Colors.white,
                        fontSize: width * 0.045,
                        fontBold: true),

                    //Inicio con redes
                    _IniciarConRedes(width: width)
                  ]),
            ),
          ),
        ]));
  }
}

class _IniciarConRedes extends StatelessWidget {
  const _IniciarConRedes({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            print("Iniciar con facebook");
          },
          child: Icon(
            FontAwesomeIcons.facebook,
            color: Colors.blueAccent,
            size: width * 0.11,
          ),
        ),
        GestureDetector(
          onTap: () {
            print("Iniciar con google");
          },
          child: Icon(
            FontAwesomeIcons.google,
            color: Colors.white,
            size: width * 0.1,
          ),
        )
      ],
    );
  }
}

class _FormInicioSesion extends StatelessWidget {
  const _FormInicioSesion({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextoWidget(
            fontBold: true,
            fontSize: 23,
            textColor: Colors.white,
            texto: "Iniciar Sesion",
          ),
          _InputEmail(width: width, height: height),
          _InputPassword(width: width, height: height),
          _BtnIrARegistro(width: width, height: height),
          _BtnIniciarSesion(width: width, height: height)
        ],
      ),
    );
  }
}

class _BtnIniciarSesion extends StatelessWidget {
  const _BtnIniciarSesion({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return ButtonWidget(
      ontap: () {
        print("Inicias sesion");
      },
      underline: false,
      backgroundColorButton: Colors.white,
      colorTextButton: Colors.black,
      textoButton: "Iniciar Sesión",
      isFontBold: true,
      widthButton: width * 0.7,
      heightButton: height * 0.05,
      borderRadiusAll: true,
      borderRadius: 20,
    );
  }
}

class _BtnIrARegistro extends StatelessWidget {
  const _BtnIrARegistro({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return ButtonWidget(
        ontap: () {
          print("Ir a registro");
          Get.toNamed(RoutesName.REGISTER);
        },
        underline: true,
        colorTextButton: Colors.white,
        textoButton: "No tengo cuenta , registrarne",
        isFontBold: true,
        widthButton: width,
        heightButton: height * 0.03,
        borderRadiusAll: false);
  }
}

class _InputPassword extends StatelessWidget {
  const _InputPassword({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return InputWidget(
        isPassword: true,
        sizeIcon: width * 0.06,
        widthIconContainer: width * 0.12,
        marginIcon: width * 0.01,
        iconBackgroundColor: Colors.black,
        leftIcon: Icons.password,
        iconColor: Colors.white,
        backgroundColor: Colors.white,
        placeholder: "Password",
        width: width * 0.75,
        height: height * 0.07);
  }
}

class _InputEmail extends StatelessWidget {
  const _InputEmail({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return InputWidget(
        sizeIcon: width * 0.06,
        widthIconContainer: width * 0.12,
        marginIcon: width * 0.01,
        inputType: TextInputType.emailAddress,
        iconBackgroundColor: Colors.black,
        leftIcon: Icons.email,
        iconColor: Colors.white,
        backgroundColor: Colors.white,
        placeholder: "Email",
        width: width * 0.75,
        height: height * 0.07);
  }
}

class _Logo extends StatelessWidget {
  const _Logo({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return LetraYLogoWidget(
      widthLetra: width * 0.47,
      widthLogo: width * 0.18,
      separacion: height * 0.025,
    );
  }
}

class _FondoImage extends StatelessWidget {
  const _FondoImage({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Image(
        fit: BoxFit.cover,
        height: height,
        width: width,
        image: AssetImage("assets/fondoAuth.png"));
  }
}
