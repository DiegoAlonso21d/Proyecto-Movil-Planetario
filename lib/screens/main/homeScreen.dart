import 'package:flutter/material.dart';
import 'package:flutter_app_planetario/controllers/controllers.dart';
import 'package:flutter_app_planetario/routes/routesName.dart';
import 'package:flutter_app_planetario/screens/screens.dart';
import 'package:flutter_app_planetario/widgets/widgets.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  final AppBarController appBarController = Get.put(AppBarController());

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    var pantalla = appBarController.currentContent;

    return Scaffold(
        body: Obx(
      () => CustomScrollView(
        slivers: [
          _PrincipalAppBar(
            width: width,
            currentContent: appBarController.currentContent.value,
            onButtonPressed: (index) {
              appBarController.changeContent(index);

              print(appBarController.currentContent.value);
            },
          ),
          (pantalla.value == 1)
              ? SearchScreen()
              : (pantalla.value == 2)
                  ? NotificationScreen()
                  : SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                          return ListTile(
                            title: Text('Publicaciones $index'),
                          );
                        },
                        childCount: 50,
                      ),
                    ),
        ],
      ),
    ));
  }
}

class _PrincipalAppBar extends StatelessWidget {
  const _PrincipalAppBar({
    Key? key,
    required this.width,
    required this.currentContent,
    required this.onButtonPressed,
  }) : super(key: key);

  final double width;
  final int currentContent;
  final Function(int) onButtonPressed;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: false,
      automaticallyImplyLeading: false,
      pinned: true,
      flexibleSpace: PrincipalAppBarWidget(
        logoOntap: () {
          onButtonPressed(0);
        },
        widthAppBar: width,
        widthLogo: width * 0.25,
        widthOpciones: width * 0.5,
        colorAppBar: Colors.white,
        heightAppBar: 70,
        heightLogo: 45,
        imageLogo: "assets/logoApp/planetario letra.png",
        listaOpciones: [
          _SearchButton(
            width: width,
            onPressed: onButtonPressed,
            /*   isActive: currentContent == 0, */
          ),
          _PerfilButton(
            width: width,
            onPressed: onButtonPressed,
            /*     isActive: currentContent == 1, */
          ),
          _NotificationButton(
            width: width,
            onPressed: onButtonPressed,
            /*    isActive: currentContent == 2, */
          ),
          _ExitButton(
            width: width,
          ),
        ],
      ),
    );
  }
}

class _PerfilButton extends StatelessWidget {
  const _PerfilButton({
    Key? key,
    required this.width,
    required this.onPressed,
  }) : super(key: key);

  final double width;
  final Function(int) onPressed;

  @override
  Widget build(BuildContext context) {
    return ImageRoundedWidget(
      onTap: () {},
      sizeImage: width * 0.039,
      backgroundColorImage: Colors.transparent,
      image:
          "https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png",
    );
  }
}

class _ExitButton extends StatelessWidget {
  const _ExitButton({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return IconWidget(
      onTap: () {
        Get.toNamed(RoutesName.LOGIN);
      },
      icon: Icons.exit_to_app,
      sizeIcon: width * 0.075,
    );
  }
}

class _NotificationButton extends StatelessWidget {
  const _NotificationButton({
    Key? key,
    required this.width,
    required this.onPressed,
  }) : super(key: key);

  final double width;
  final Function(int) onPressed;

  @override
  Widget build(BuildContext context) {
    return IconWidget(
      onTap: () {
        onPressed(2);
        // Get.toNamed(RoutesName.NOTIFICATIONS); // Si deseas activar esta línea, descoméntala
      },
      icon: Icons.notifications,
      sizeIcon: width * 0.075,
    );
  }
}

class _SearchButton extends StatelessWidget {
  const _SearchButton({
    Key? key,
    required this.width,
    required this.onPressed,
  }) : super(key: key);

  final double width;
  final Function(int) onPressed;

  @override
  Widget build(BuildContext context) {
    return IconWidget(
      onTap: () {
        onPressed(1);
      },
      icon: Icons.search,
      sizeIcon: width * 0.075,
    );
  }
}
