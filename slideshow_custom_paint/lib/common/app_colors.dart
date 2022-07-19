import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class AppColors {
  static const leftGradient = LinearGradient(
    colors: [
      Color(0xFF8e7cc3),
      Color(0xFF4a86e8),
    ],
  );

  static const middleGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFFa1c3ff),
      Color(0xFF6299ef),
    ],
  );

  static const rightGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFF9ad7ff),
      Color(0xFF0088e0),
    ],
  );

  static const overLeafColor = Color(0xFF8e7cc3);

  static const blue1 = Color(0xFF4a86e8);
  static const blue2 = Color(0xFFa1c3ff);
  static const blue3 = Color(0xFF9ad7ff);
}
