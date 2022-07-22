import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:slideshow_custom_paint/ui/pages/custom_paint/custom_paint_subject_page.dart';
import 'package:slideshow_custom_paint/ui/pages/examples/examples_subject_page.dart';
import 'package:slideshow_custom_paint/ui/widget/custom_paint/arrow_right.dart';
import 'package:slideshow_custom_paint/ui/widget/templete/split_screen.dart';
import 'package:slideshow_custom_paint/ui/widget/view/code_view.dart';

class DrawPathPage extends StatelessWidget {
  const DrawPathPage({super.key});

  static const routePath = 'path';

  @override
  Widget build(BuildContext context) {
    return SplitScreen(
      subject: CustomPaintSubjectPage.subjectName,
      onPressed: () {
        context.go(ExamplesSubjectPage.routePath);
      },
      children: [
        CodeView(
          style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 20),
          code: '''
  @override
  void paint(Canvas canvas, Size size) {
    final framePaint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    final fillPaint = Paint()
      ..color = AppColors.overLeafColor
      ..style = PaintingStyle.fill;

    final path = Path()
      ..moveTo(arrowVertex.dx, arrowVertex.dy)
      ..lineTo(arrowBaseTop.dx, arrowBaseTop.dy)
      ..lineTo(lineTopRight.dx, lineTopRight.dy)
      ..lineTo(lineTopLeft.dx, lineTopLeft.dy)
      ..lineTo(lineBottomLeft.dx, lineBottomLeft.dy)
      ..lineTo(lineBottomRight.dx, lineBottomRight.dy)
      ..lineTo(arrowBaseBottom.dx, arrowBaseBottom.dy)
      ..close();

    canvas
      ..drawPath(path, framePaint)
      ..drawPath(path, fillPaint);
  }''',
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Align(
              child: ArrowRight(
                length: 200,
                height: 80,
                lineStroke: 30,
                color: Colors.yellow,
              ),
            ),
            const SizedBox(height: 50),
            Text(
              '手順\n'
              '1. paint\n'
              '   図形と枠線それぞれの色を設定\n\n'
              '2. path\n'
              '   矢印の形を作るためにPathを設定\n'
              '   点から点へlineToで線を引くことで矢印を作る\n\n'
              '3. drawPath\n'
              '   canvasに対してdrawPathを行うことで画面上に描写\n',
              style:
                  Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 30),
            ),
          ],
        ),
      ],
    );
  }
}
