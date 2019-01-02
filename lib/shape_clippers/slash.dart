import 'package:flutter/material.dart';

class SlashClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = new Path();

    var fivePercentOfShapeHeight = ((size.height / 100) * 5);
    var fivePercentOfShapeWidth = ((size.width / 100) * 5);

    path.moveTo(size.width - fivePercentOfShapeWidth, 0);

    path.lineTo(0.0, size.height - fivePercentOfShapeHeight);
    path.lineTo(fivePercentOfShapeWidth, size.height);

    path.lineTo(size.width, fivePercentOfShapeHeight);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
