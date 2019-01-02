import 'package:flutter/material.dart';

class DiamondClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = new Path();

    path.moveTo(size.width / 2, 0.0);

    path.lineTo(
        (size.width / 100) * 10, size.height / 2 - ((size.height / 100) * 10));
    path.lineTo(size.width / 2, size.height);
    path.lineTo(size.width - ((size.width / 100) * 10), size.height / 2 - ((size.height / 100) * 10));
    path.lineTo(size.width / 2, 0.0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
