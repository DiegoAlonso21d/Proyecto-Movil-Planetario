import 'package:flutter/material.dart';
import 'package:flutter_app_planetario/widgets/widgets.dart';

class PublicarPost extends StatelessWidget {
  const PublicarPost({Key? key}) : super(key: key);

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                width: width,
                height: height * 0.2,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/post.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
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
            ),
            Padding(
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
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: InputWidget(
                width: width * 1,
                height: height * 0.06,
                backgroundColor: Colors.white24,
                borderRadius: BorderRadius.circular(12.0),
                iconColor: Colors.white,
                inputType: TextInputType.text,
                borderWidth: 1,
                borderColor: Colors.black,
              ),
            ),
            Padding(
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
            ),
            Padding(
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
            ),
            Padding(
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
            ),
          ],
        ),
      ),
    );
  }
}
