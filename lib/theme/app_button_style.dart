import 'package:flutter/material.dart';

import 'color_theme.dart';

abstract class AppButtonStyle {
  static final ButtonStyle linkButton = ButtonStyle(
    foregroundColor: MaterialStateProperty.all(colorButton),
    textStyle: MaterialStateProperty.all(
      const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
    ),
  );
}
