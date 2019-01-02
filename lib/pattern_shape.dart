import 'package:flutter/material.dart';
import 'package:shape_patterns/shape_clippers/circle.dart';
import 'package:shape_patterns/shape_clippers/diamond.dart';
import 'package:shape_patterns/shape_clippers/slash.dart';
import 'package:shape_patterns/shape_clippers/triangle.dart';

class PatternShape extends StatefulWidget {
  final String shapeName;
  final double size;
  final Color color;

  PatternShape(this.shapeName, {this.size, this.color});

  @override
  _PatternShapeState createState() => _PatternShapeState();
}

class _PatternShapeState extends State<PatternShape> {
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
      case PatternShapes.triangle:
        return TriangleClipper();
        break;
      case PatternShapes.square:
        return null;
        break;
      case PatternShapes.diamond:
        return DiamondClipper();
        break;
      case PatternShapes.circle:
        return CircleClipper();
        break;
      case PatternShapes.slash:
        return SlashClipper();
        break;
    }
  }
}

class PatternShapes {
  static const triangle = 'PATTERN_SHAPE_TRIANGLE';
  static const square = 'PATTERN_SHAPE_SQUARE';
  static const diamond = 'PATTERN_SHAPE_DIAMOND';
  static const circle = 'PATTERN_SHAPE_CIRCLE';
  static const slash = 'PATTERN_SHAPE_SLASH';
}

