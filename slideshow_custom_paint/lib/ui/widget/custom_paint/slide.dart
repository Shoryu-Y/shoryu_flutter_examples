import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:slideshow_custom_paint/common/app_colors.dart';
import 'package:slideshow_custom_paint/ui/widget/top_bar.dart';

class Slide extends StatelessWidget {
  const Slide({
    super.key,
    this.onPressed,
    required this.child,
  });

  final VoidCallback? onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: onPressed,
        child: LayoutBuilder(
          builder: (context, constraints) {
            return CustomPaint(
              size: Size(constraints.maxWidth, constraints.maxHeight),
              painter: SlidePainter(),
              child: Stack(
                children: [
                  child,
                  const TopBar(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class SlidePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final width = size.width;
    final height = size.height;

    final leftPaint = Paint()
      ..style = PaintingStyle.fill
      ..shader = AppColors.leftGradient
          .createShader(Rect.fromLTWH(0, 0, width * 0.5, 0));
    final middlePaint = Paint()
      ..style = PaintingStyle.fill
      ..shader = AppColors.middleGradient
          .createShader(Rect.fromLTWH(0, 0, 0, height * 0.4));
    final rightPaint = Paint()
      ..style = PaintingStyle.fill
      ..shader =
          AppColors.rightGradient.createShader(Rect.fromLTWH(0, 0, 0, height));

    final leftTL = Offset(width * 0, height * 0);
    final leftTR = Offset(width * 0.6, height * 0);
    final leftBR = Offset(width * 0.85, height * 1);
    final leftBL = Offset(width * 0, height * 1);

    final rightTL = Offset(width * 0.95, height * 0);
    final rightTR = Offset(width * 1, height * 0);
    final rightBR = Offset(width * 1, height * 1);
    final rightBL = Offset(width * 0.65, height * 1);

    final leftPath = Path()
      ..lineTo(leftTR.dx, leftTR.dy)
      ..lineTo(leftBR.dx, leftBR.dy)
      ..lineTo(leftBL.dx, leftBL.dy);

    final rightPath = Path()
      ..moveTo(rightTL.dx, rightTL.dy)
      ..lineTo(rightTR.dx, rightTR.dy)
      ..lineTo(rightBR.dx, rightBR.dy)
      ..lineTo(rightBL.dx, rightBL.dy);

    canvas
      ..drawPaint(middlePaint)
      ..drawPath(leftPath, leftPaint)
      ..drawPath(rightPath, rightPaint);
  }

  @override
  bool shouldRepaint(SlidePainter oldDelegate) {
    print('should');
    return false;
  }
}
