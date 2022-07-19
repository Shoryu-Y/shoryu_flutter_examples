import 'package:flutter/material.dart';
import 'package:slideshow_custom_paint/common/app_colors.dart';

class ArrowRight extends StatelessWidget {
  const ArrowRight({
    super.key,
    this.length,
    this.height,
    this.lineStroke,
    this.lineLengthRate,
  });

  final double? length;
  final double? height;
  final double? lineStroke;
  final double? lineLengthRate;

  @override
  Widget build(BuildContext context) {
    final length = this.length ?? 80;
    final height = this.height ?? 30;
    final lineLengthRate = this.lineLengthRate ?? 0.8;
    final lineStroke = this.lineStroke ?? 10;

    final lineStrokeRate = lineStroke / height;

    return CustomPaint(
      size: Size(length, height),
      foregroundPainter: _RightArrowPainter(lineLengthRate, lineStrokeRate),
    );
  }
}

class _RightArrowPainter extends CustomPainter {
  const _RightArrowPainter(this.lineLengthRate, this.lineStrokeRate);

  final double lineLengthRate;
  final double lineStrokeRate;

  @override
  void paint(Canvas canvas, Size size) {
    final width = size.width;
    final height = size.height;

    final stroke = 0.5 - lineStrokeRate / 2;

    final arrowTop = Offset(width, height / 2);
    final arrowBottomTop = Offset(width * lineLengthRate, 0);
    final arrowBottomBottom = Offset(width * lineLengthRate, height);
    final lineTopRight = Offset(width * lineLengthRate, height * stroke);
    final lineTopLeft = Offset(0, height * stroke);
    final lineBottomLeft = Offset(0, height * (1 - stroke));
    final lineBottomRight =
        Offset(width * lineLengthRate, height * (1 - stroke));

    final paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    final fillPaint = Paint()
      ..color = AppColors.overLeafColor
      ..style = PaintingStyle.fill;

    final path = Path()
      ..moveTo(arrowTop.dx, arrowTop.dy)
      ..lineTo(arrowBottomTop.dx, arrowBottomTop.dy)
      ..lineTo(lineTopRight.dx, lineTopRight.dy)
      ..lineTo(lineTopLeft.dx, lineTopLeft.dy)
      ..lineTo(lineBottomLeft.dx, lineBottomLeft.dy)
      ..lineTo(lineBottomRight.dx, lineBottomRight.dy)
      ..lineTo(arrowBottomBottom.dx, arrowBottomBottom.dy)
      ..close();

    canvas
      ..drawPath(path, paint)
      ..drawPath(path, fillPaint);
  }

  @override
  bool shouldRepaint(_RightArrowPainter oldDelegate) {
    return false;
  }
}
