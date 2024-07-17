import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppTextStyle {
  static const MINI_BOLD_DESCRIPTION_TEXT = TextStyle(
    fontSize: 13,
    color: Colors.black,
    letterSpacing: 3,
    fontWeight: FontWeight.w600,
  );

  static const MIIDLE_BUTTON_TEXT = TextStyle(
      fontSize: 20,
      letterSpacing: 5,
      color: Color.fromARGB(255, 13, 13, 13),
      fontWeight: FontWeight.w300);

  static const MINI_DESCRIPTION_TEXT =
      TextStyle(fontSize: 13, color: Colors.black87, letterSpacing: 3);

  static const MINI_DEFAULT_DESCRIPTION_TEXT = TextStyle(
    fontSize: 13,
    color: Colors.black,
  );

  static const MINI_DESCRIPTION_BOLD =
      TextStyle(fontSize: 13, color: Colors.black, fontWeight: FontWeight.w600);
}
