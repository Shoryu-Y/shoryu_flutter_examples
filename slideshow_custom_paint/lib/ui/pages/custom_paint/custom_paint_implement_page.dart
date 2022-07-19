import 'package:flutter/material.dart';
import 'package:slideshow_custom_paint/ui/pages/custom_paint/custom_paint_page.dart';
import 'package:slideshow_custom_paint/ui/pages/custom_paint/custom_painter_page.dart';
import 'package:slideshow_custom_paint/ui/widget/pages/body.dart';

class ImplementPage extends StatelessWidget {
  const ImplementPage({super.key});

  static const routePath = 'implements';

  @override
  Widget build(BuildContext context) {
    return Body(
      subject: CustomPaintPage.subjectName,
      onPressed: () {
        CustomPaintPage.pushSubRoute(
          context,
          subRoute: CustomPainterPage.routePath,
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Row(
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  '''
CustomPaint(
  size: Size,
  foregroundPainter: CustomPainter,
  child: Widget,
  painter: CustomPainter,
  isComplex: bool,
  willChange: bool,
);''',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      ?.copyWith(fontSize: 30),
                ),
              ),
            ),
            Expanded(
              child: Text(
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
            ),
          ],
        ),
      ),
    );
  }
}
