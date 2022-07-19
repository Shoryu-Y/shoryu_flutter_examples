import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:slideshow_custom_paint/ui/pages/Trees/trees_page.dart';
import 'package:slideshow_custom_paint/ui/pages/graphics_engine/graphics_engine_page.dart';
import 'package:slideshow_custom_paint/ui/widget/pages/body.dart';

class SkiaDetailPage extends StatelessWidget {
  const SkiaDetailPage({super.key});

  static const routePath = 'skia_detail';

  @override
  Widget build(BuildContext context) {
    return Body(
      subject: GraphicsEnginePage.subjectName,
      onPressed: () {
        context.go(TreesPage.routePath);
      },
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Skiaとは？', style: Theme.of(context).textTheme.bodyText1),
            Text(
              '・Googleが開発している\n'
              '・C++で書かれた\n'
              '・クロスプラットフォームかつ\n'
              '・オープンソースの\n'
              '・2次元コンピュータグラフィックスライブラリ\n',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text(
              'Flutter上の画面は全てSkiaによって描写されている\n'
              '・ネイティブのAPIは呼び出していない\n'
              '・限りなく本物に近い偽物\n'
              '　↑React Nativeとの大きな違い',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
      ),
    );
  }
}
