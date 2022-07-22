import 'package:flutter/material.dart';

class CustomRect extends StatelessWidget {
  const CustomRect({super.key, required this.width, required this.height});

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(width, height),
      painter: RectPainter(),
    );
  }
}

class RectPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTWH(
      0,
      0,
      size.width,
      size.height,
    );
    final paint = Paint()..color = Colors.white;
    canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(RectPainter oldDelegate) {
    return false;
  }
}
