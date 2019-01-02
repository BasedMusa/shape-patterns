# shape_patterns

A flutter widget for making patterns from shapes

## Usage
Import the following dependencies

``` Dart
import 'package:shape_patterns/shape.dart';
import 'package:shape_patterns/shape_pattern.dart';
```
Create a pattern widget like this

``` Dart
ShapePattern(
        shapeName: ShapeNames.slash,
        numberOfRows: 8,
        numberOfColumns: 5,
        shapeMargins: 10.0,
        shapeColor: Colors.grey[100],
        shapeSize: 40.0,
      ),
```      

## Advanced Usage

You can replace normal Scaffold widget with PatternScaffold like this so

``` Dart
import 'package:shape_patterns/pattern_scaffold.dart';

PatternScaffold(
      pattern: ShapePattern(
        shapeName: ShapeNames.triangle,
        angle: 0.7,
        numberOfRows: 8,
        numberOfColumns: 5,
        shapeMargins: 30.0,
        shapeColor: Colors.grey[100],
        shapeSize: 40.0,
      ),
      appBar: AppBar(
        title: Text('Shape Patterns Example'),
      ),
    );
```
