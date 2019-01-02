import 'package:flutter/material.dart';

class CircleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {

    var _radius = Radius.circular(size.width/2);

    Path path = new Path();

    path.moveTo(size.width / 2, 0.0);

    path.arcToPoint(Offset(size.width / 2, size.height),
        radius: _radius);
    path.arcToPoint(Offset(size.width / 2, 0.0), radius: _radius);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
