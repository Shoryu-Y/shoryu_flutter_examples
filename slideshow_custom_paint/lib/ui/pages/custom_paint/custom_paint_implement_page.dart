import 'package:flutter/material.dart';
import 'package:slideshow_custom_paint/ui/pages/custom_paint/custom_paint_subject_page.dart';
import 'package:slideshow_custom_paint/ui/pages/custom_paint/custom_painter_page.dart';
import 'package:slideshow_custom_paint/ui/widget/templete/split_screen.dart';
import 'package:slideshow_custom_paint/ui/widget/view/code_view.dart';

class ImplementPage extends StatelessWidget {
  const ImplementPage({super.key});

  static const routePath = 'implements';

  @override
  Widget build(BuildContext context) {
    return SplitScreen(
      subject: CustomPaintSubjectPage.subjectName,
      onPressed: () {
        CustomPaintSubjectPage.pushSubRoute(
          context,
          subRoute: CustomPainterPage.routePath,
        );
      },
      children: [
        const CodeView(
          code: '''
CustomPaint(
  size: Size,
  foregroundPainter: CustomPainter,
  child: Widget,
  painter: CustomPainter,
  isComplex: bool,
  willChange: bool,
);''',
        ),
        Text(
          '・size\n'
          '　描写範囲を指定できる\n'
          '　指定しない場合は通常通りのconstraintsに依る\n'
          '\n'
          '・foregroundPainter / painter\n'
          '　CustomPaintのメイン\n'
          '　CustomPainterを用いてUIを描写\n'
          '　foregroundPainterがchildより前面、\n'
          '　painterが背面に描写される\n'
          '\n'
          '・child\n'
          '　CustomPaintの内部に配置するWidgetを指定できる\n'
          '\n'
          '・isComplex / willChange\n'
          '　Rasterキャッシュに関わる部分\n',
          style: Theme.of(context)
              .textTheme
              .bodyText1
              ?.copyWith(fontSize: 30),
        ),
      ],
    );
  }
}
