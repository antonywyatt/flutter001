import 'package:flutter/material.dart';

const Color _customColor = Color.fromARGB(255, 255, 0, 0);
const List<Color> _colorTheme = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.pink,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 2})
      : assert(selectedColor >= 0 && selectedColor < _colorTheme.length,
            'Colors between 0 and ${_colorTheme.length} are allowed');

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorTheme[selectedColor],
    );
  }
}
