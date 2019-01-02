import 'package:flutter/material.dart';
import 'package:shape_patterns/shape_clippers/circle.dart';
import 'package:shape_patterns/shape_clippers/diamond.dart';
import 'package:shape_patterns/shape_clippers/slash.dart';
import 'package:shape_patterns/shape_clippers/triangle.dart';

class Shape extends StatefulWidget {
  final String shapeName;
  final double size;
  final Color color;

  Shape(this.shapeName, {this.size, this.color});

  @override
  _ShapeState createState() => _ShapeState();
}

class _ShapeState extends State<Shape> {
  @override
  Widget build(BuildContext context) => ClipPath(
        clipper: _clipper(),
        child: Container(
          color: widget.color,
          height: widget.size,
          width: widget.size,
        ),
      );

  _clipper() {
    switch (widget.shapeName) {
      case ShapeNames.triangle:
        return TriangleClipper();
        break;
      case ShapeNames.square:
        return null;
        break;
      case ShapeNames.diamond:
        return DiamondClipper();
        break;
      case ShapeNames.circle:
        return CircleClipper();
        break;
      case ShapeNames.slash:
        return SlashClipper();
        break;
    }
  }
}

class ShapeNames {
  static const triangle = 'PATTERN_SHAPE_TRIANGLE';
  static const square = 'PATTERN_SHAPE_SQUARE';
  static const diamond = 'PATTERN_SHAPE_DIAMOND';
  static const circle = 'PATTERN_SHAPE_CIRCLE';
  static const slash = 'PATTERN_SHAPE_SLASH';
}

