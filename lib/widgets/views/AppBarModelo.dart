// ignore: file_names
import 'package:flutter/material.dart';

class AppBarModelo extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  final bool centerTitle;
  final Color backgroundColor;
  final double elevation;
  final Widget? leading;
  final Color? foregroundColor;
  final double height;

  const AppBarModelo({
    required this.title,
    this.actions,
    this.centerTitle = true,
    this.backgroundColor = Colors.white,
    this.elevation = 10,
    this.leading,
    this.foregroundColor = Colors.black,
    this.height = kToolbarHeight,
  });

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        textAlign: centerTitle ? TextAlign.center : TextAlign.start,
        style: TextStyle(color: foregroundColor),
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: actions ?? [],
        ),
      ],
      centerTitle: centerTitle,
      backgroundColor: backgroundColor,
      elevation: elevation,
      leading: leading,
    );
  }
}