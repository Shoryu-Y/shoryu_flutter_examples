import 'package:amplify_app/common/colors.dart';
import 'package:flutter/material.dart';

ThemeData get lightTheme => ThemeData(
      colorSchemeSeed: AppColors.brandColor,
      useMaterial3: true,
    );

ThemeData get darkTheme => ThemeData(
      colorSchemeSeed: AppColors.brandColor,
      brightness: Brightness.dark,
      useMaterial3: true,
    );
