import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:slideshow_custom_paint/ui/pages/custom_paint/custom_paint_subject_page.dart';
import 'package:slideshow_custom_paint/ui/pages/custom_paint/draw_rect_page.dart';
import 'package:slideshow_custom_paint/ui/widget/templete/split_screen.dart';
import 'package:slideshow_custom_paint/ui/widget/view/code_view.dart';

class CustomPainterPage extends StatelessWidget {
  const CustomPainterPage({super.key});

  static const routePath = 'custom_painter';

  @override
  Widget build(BuildContext context) {
    return SplitScreen(
      subject: CustomPaintSubjectPage.subjectName,
      onPressed: () {
        CustomPaintSubjectPage.pushSubRoute(
          context,
          subRoute: DrawRectPage.routePath,
        );
      },
      children: [
        const CodeView(
          code: '''
class MyPainter extends CustomPainter {
  const MyPainter();

  @override
  void paint(Canvas canvas, Size size) {
    ...
  }

  @override
  bool shouldRepaint(MyPainter oldDelegate) {
    ...
  }
}''',
        ),
        Text(
          '・paint\n'
          '　canvasに対してdrawXXXを行うことで描写される\n'
          '　例：\n'
          '　- drawRect\n'
          '　- drawCircle\n'
          '　- drawPaint\n'
          '　- drawPath\n'
          '\n'
          '・shouldRepaint\n'
          '　CustomPainterがインスタンス化されるたびに呼ばれ、\n'
          '　再描写するかを指定する\n',
          style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 30),
        ),
      ],
    );
  }
}
