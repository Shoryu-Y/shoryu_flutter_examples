import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:slideshow_custom_paint/app.dart';
import 'package:slideshow_custom_paint/ui/widget/custom_paint/slide.dart';

void main() {
  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}
