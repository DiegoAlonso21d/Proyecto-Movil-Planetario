import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  final String image;
  final double width;
  final double height;

  const ImageWidget(
      {super.key,
      required this.image,
      required this.width,
      required this.height});

  @override
  Widget build(BuildContext context) {
    return Image(width: width, height: height, image: AssetImage(image));
  }
}
