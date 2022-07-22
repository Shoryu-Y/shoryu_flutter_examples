import 'package:flutter/material.dart';
import 'package:slideshow_custom_paint/ui/pages/custom_paint/custom_paint_subject_page.dart';
import 'package:slideshow_custom_paint/ui/pages/custom_paint/draw_path_page.dart';
import 'package:slideshow_custom_paint/ui/widget/custom_paint/custom_rect.dart';
import 'package:slideshow_custom_paint/ui/widget/templete/split_screen.dart';
import 'package:slideshow_custom_paint/ui/widget/view/code_view.dart';

class DrawRectPage extends StatelessWidget {
  const DrawRectPage({super.key});

  static const routePath = 'rect';

  @override
  Widget build(BuildContext context) {
    return SplitScreen(
      subject: CustomPaintSubjectPage.subjectName,
      onPressed: () {
        CustomPaintSubjectPage.pushSubRoute(
          context,
          subRoute: DrawPathPage.routePath,
        );
      },
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CustomRect(width: 300, height: 100),
            SizedBox(height: 50),
            CodeView(
              code: '''
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white;
      
    final rect = Rect.fromLTWH(0, 0, size.width, size.height);
      
    canvas.drawRect(rect, paint);
  }''',
            ),
          ],
        ),
        Text(
          '手順\n'
          '1. paint\n'
          '   Paintのインスタンスを作成し、図形に塗るための色を設定\n\n'
          '2. rect\n'
          '   長方形を描写するためRectを設定\n\n'
          '3. drawRect\n'
          '   canvasに対してdrawRectを行うことで画面上に描写\n',
          style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 30),
        ),
      ],
    );
  }
}
