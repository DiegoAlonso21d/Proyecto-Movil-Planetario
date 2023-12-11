import 'package:flutter/material.dart';

class ImageRoundedWidget extends StatelessWidget {
  final double sizeImage;
  final Color backgroundColorImage;
  final String image;

  final void Function()? onTap;

  const ImageRoundedWidget(
      {super.key,
      required this.sizeImage,
      required this.backgroundColorImage,
      required this.image,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        radius: sizeImage,
        backgroundColor: backgroundColorImage,
        backgroundImage: NetworkImage(image),
      ),
    );
  }
}
