import 'package:flutter/material.dart';
import 'package:flutter_app_planetario/routes/routesName.dart';
import 'package:flutter_app_planetario/widgets/widgets.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _PrincipalAppBar(width: width),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ListTile(
                  title: Text('Item $index'),
                );
              },
              childCount: 50,
            ),
          ),
        ],
      ),
    );
  }
}

class _PrincipalAppBar extends StatelessWidget {
  const _PrincipalAppBar({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: false,
      automaticallyImplyLeading: false,
      pinned: true,
      flexibleSpace: PrincipalAppBarWidget(
          widthAppBar: width,
          widthLogo: width * 0.25,
          widthOpciones: width * 0.5,
          colorAppBar: Colors.white,
          heightAppBar: 70,
          heightLogo: 45,
          imageLogo: "assets/logoApp/planetario letra.png",
          listaOpciones: [
            _SearchButton(width: width),
            _PerfilButton(width: width),
            _NotificationButton(width: width),
            _ExitButton(width: width),
          ]),
    );
  }
}

class _PerfilButton extends StatelessWidget {
  const _PerfilButton({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return ImageRoundedWidget(
        onTap: () {},
        sizeImage: width * 0.039,
        backgroundColorImage: Colors.transparent,
        image:
            "https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png");
  }
}

class _ExitButton extends StatelessWidget {
  const _ExitButton({
    super.key,
    required this.width,
  });

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
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return IconWidget(
      onTap: () {},
      icon: Icons.notifications,
      sizeIcon: width * 0.075,
    );
  }
}

class _SearchButton extends StatelessWidget {
  const _SearchButton({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return IconWidget(
      onTap: () {},
      icon: Icons.search,
      sizeIcon: width * 0.075,
    );
  }
}
