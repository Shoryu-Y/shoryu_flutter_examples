import 'package:flutter/material.dart';

class FrameBox extends StatelessWidget {
  const FrameBox({
    super.key,
    required this.title,
    required this.child,
    this.strokeWidth,
  });

  final Text title;
  final double? strokeWidth;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final textSpan = TextSpan(
      text: title.data,
      style: title.style,
    );

    return CustomPaint(
      foregroundPainter: _FramePainter(
        textSpan,
        strokeWidth ?? 3,
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          top: 50,
          right: 20,
          bottom: 20,
        ),
        child: child,
      ),
    );
  }
}

class _FramePainter extends CustomPainter {
  const _FramePainter(this.text, this.strokeWidth);

  final TextSpan text;
  final double strokeWidth;

  @override
  void paint(Canvas canvas, Size size) {
    print('repaint');
    final width = size.width;
    final height = size.height;

    const radius = 20.0;
    const padding = 10.0;
    const textOffset = Offset(padding + radius + 10, 0);

    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..color = Colors.white
      ..strokeWidth = strokeWidth;

    final textPainter =
        TextPainter(text: text, textDirection: TextDirection.ltr)
          ..layout(maxWidth: size.width)
          ..paint(canvas, textOffset);

    final textWidth = textPainter.width;
    final textHeight = textPainter.height;

    final path = Path()
      ..moveTo(textWidth + radius + padding * 2 + 10, textHeight / 2)
      ..lineTo(width - 20, textHeight / 2)
      ..quadraticBezierTo(width, textHeight / 2, width, textHeight / 2 + 20)
      ..lineTo(width * 1, height - 20)
      ..quadraticBezierTo(width, height, width - 20, height)
      ..lineTo(20, height)
      ..quadraticBezierTo(0, height, 0, height - 20)
      ..lineTo(0, textHeight / 2 + 20)
      ..quadraticBezierTo(0, textHeight / 2, 20, textHeight / 2)
      ..lineTo(30, textHeight / 2);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(_FramePainter oldDelegate) {
    print('shouldRepaint: ${oldDelegate.text != text}');
    return oldDelegate.text != text;
  }
}
