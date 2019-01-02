import 'package:flutter/material.dart';
import 'package:shape_patterns/pattern_shape.dart';

class ShapePattern extends StatefulWidget {
  final String shapeName;
  final double shapeMargins;
  final Color shapeColor;
  final double shapeSize;
  final int numberOfRows;
  final int numberOfColumns;
  final double angle;

  ShapePattern(
      {@required this.shapeName,
        this.numberOfColumns = 10,
        this.numberOfRows = 25,
        this.angle = 0.0,
        this.shapeMargins = 10.0,
        this.shapeSize = 24.0,

        ///Constant shade [600] for [Colors.grey]
        this.shapeColor = const Color(0xFF757575)});

  @override
  ShapePatternState createState() {
    return new ShapePatternState();
  }
}

class ShapePatternState extends State<ShapePattern> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: _approach1(),
      ),
    );
  }

  _approach1() {
    List<Widget> _widgetList = new List();
    List<Widget> _columns = new List();

    for (int i = 0; i < widget.numberOfColumns; i++) {
      _columns.add(Container(
          margin: EdgeInsets.all(widget.shapeMargins / 2),
          child: Transform.rotate(
            angle: widget.angle,
            child: PatternShape(widget.shapeName, color: widget.shapeColor, size: widget.shapeSize),
          )));
    }

    for (int i = 0; i < widget.numberOfRows; i++) {
      Widget _row = Row(
        children: _columns,
      );
      _widgetList.add(_row);
    }

    return _widgetList;
  }
}

