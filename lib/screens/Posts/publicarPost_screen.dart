import 'package:flutter/material.dart';
import 'package:flutter_app_planetario/widgets/widgets.dart';

class PublicarPostScreen extends StatelessWidget {
  const PublicarPostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBarModelo(
        title: 'Publicar',
        backgroundColor: Colors.white,
        height: height * 0.07,
        elevation: 10,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: _CreatePostForm(width: width, height: height),
    );
  }
}

class _CreatePostForm extends StatelessWidget {
  const _CreatePostForm({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _ImagePost(width: width, height: height),
          _SeleccionarImageButton(width: width, height: height),
          _TituloLabel(width: width),
          _TituloInput(width: width, height: height),
          _DescripcionLabel(width: width),
          _DescripcionInput(width: width, height: height),
          _PublicarButton(width: width, height: height),
        ],
      ),
    );
  }
}

class _PublicarButton extends StatelessWidget {
  const _PublicarButton({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ButtonWidget(
        underline: false,
        textoButton: "Publicar",
        isFontBold: true,
        widthButton: width * 1,
        heightButton: height * 0.05,
        borderRadiusAll: true,
        borderRadius: 15,
        colorTextButton: Colors.green,
        widthBorder: 2,
        colorBorder: Colors.green,
        backgroundColorButton: Colors.white,
      ),
    );
  }
}

class _DescripcionInput extends StatelessWidget {
  const _DescripcionInput({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextAreaPrueba(
        hintText: 'Escribe algo sobre tu publicación',
        borderWidth: 1,
        borderColor: Colors.black,
        borderRadius: BorderRadius.circular(12.0),
        width: width * 1,
        height: height * 0.1,
        controller: TextEditingController(),
      ),
    );
  }
}

class _DescripcionLabel extends StatelessWidget {
  const _DescripcionLabel({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
      child: Container(
        width: width * 1,
        child: Text(
          "Descripcion:",
          textAlign: TextAlign.left,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}

class _TituloInput extends StatelessWidget {
  const _TituloInput({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InputWidget(
        isFontBold: false,
        width: width * 1,
        height: height * 0.06,
        backgroundColor: Colors.white24,
        borderRadius: BorderRadius.circular(12.0),
        iconColor: Colors.white,
        inputType: TextInputType.text,
        borderWidth: 1,
        borderColor: Colors.black,
      ),
    );
  }
}

class _TituloLabel extends StatelessWidget {
  const _TituloLabel({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
      child: Container(
        width: width * 1,
        child: Text(
          "Titulo publicación:",
          textAlign: TextAlign.left,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}

class _SeleccionarImageButton extends StatelessWidget {
  const _SeleccionarImageButton({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ButtonWidget(
        underline: false,
        textoButton: "Seleccionar imagen",
        isFontBold: true,
        widthButton: width * 1,
        heightButton: height * 0.05,
        borderRadiusAll: true,
        borderRadius: 15,
        colorTextButton: Colors.green,
        widthBorder: 2,
        colorBorder: Colors.green,
        backgroundColorButton: Colors.white,
      ),
    );
  }
}

class _ImagePost extends StatelessWidget {
  const _ImagePost({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        width: width,
        height: height * 0.25,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/post.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
