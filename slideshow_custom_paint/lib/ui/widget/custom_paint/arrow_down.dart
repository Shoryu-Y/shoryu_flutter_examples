import 'package:flutter/material.dart';
import 'package:slideshow_custom_paint/common/app_colors.dart';

class ArrowDown extends StatelessWidget {
  const ArrowDown({
    super.key,
    this.width,
    this.length,
    this.lineStroke,
    this.lineLengthRate,
  });

  final double? width;
  final double? length;
  final double? lineStroke;
  final double? lineLengthRate;

  @override
  Widget build(BuildContext context) {
    final width = this.width ?? 50;
    final length = this.length ?? 50;
    final lineLengthRate = this.lineLengthRate ?? 0.5;
    final lineStroke = this.lineStroke ?? 30;
    final lineStrokeRate = lineStroke / width;

    return CustomPaint(
      size: Size(width, length),
      foregroundPainter: _DownArrowPainter(lineLengthRate, lineStrokeRate),
    );
  }
}

class _DownArrowPainter extends CustomPainter {
  const _DownArrowPainter(this.lineLengthRate, this.lineStrokeRate);

  final double lineLengthRate;
  final double lineStrokeRate;

  @override
  void paint(Canvas canvas, Size size) {
    final width = size.width;
    final height = size.height;

    final stroke = 0.5 - lineStrokeRate / 2;

    final arrowTop = Offset(width / 2, height);
    final arrowBottomLeft = Offset(0, height * lineLengthRate);
    final arrowBottomRight = Offset(width, height * lineLengthRate);
    final lineTopLeft = Offset(width * stroke, 0);
    final lineTopRight = Offset(width * (1 - stroke), 0);
    final lineBottomLeft = Offset(width * stroke, height * lineLengthRate);
    final lineBottomRight =
        Offset(width * (1 - stroke), height * lineLengthRate);

    final paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    final fillPaint = Paint()
      ..color = AppColors.overLeafColor
      ..style = PaintingStyle.fill;

    final path = Path()
      ..moveTo(arrowTop.dx, arrowTop.dy)
      ..lineTo(arrowBottomLeft.dx, arrowBottomLeft.dy)
      ..lineTo(lineBottomLeft.dx, lineBottomLeft.dy)
      ..lineTo(lineTopLeft.dx, lineTopLeft.dy)
      ..lineTo(lineTopRight.dx, lineTopRight.dy)
      ..lineTo(lineBottomRight.dx, lineBottomRight.dy)
      ..lineTo(arrowBottomRight.dx, arrowBottomRight.dy)
      ..close();

    canvas
      ..drawPath(path, paint)
      ..drawPath(path, fillPaint);
  }

  @override
  bool shouldRepaint(_DownArrowPainter oldDelegate) {
    return false;
  }
}
