import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  final IconData icon;

  final double sizeIcon;

  final void Function()? onTap;

  const IconWidget(
      {super.key, required this.icon, required this.sizeIcon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Icon(
        icon,
        size: sizeIcon,
      ),
    );
  }
}
