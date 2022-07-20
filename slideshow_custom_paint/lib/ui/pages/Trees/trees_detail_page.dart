import 'package:flutter/material.dart';
import 'package:slideshow_custom_paint/ui/pages/Trees/trees_figure_page.dart';
import 'package:slideshow_custom_paint/ui/pages/Trees/trees_subject_page.dart';
import 'package:slideshow_custom_paint/ui/widget/templete/screen.dart';

class TreesDetailPage extends StatelessWidget {
  const TreesDetailPage({super.key});

  static const routePath = 'introduction';

  @override
  Widget build(BuildContext context) {
    return Screen(
      subject: TreesSubjectPage.subjectName,
      onPressed: () {
        TreesSubjectPage.pushSubRoute(context, subRoute: TreesFigurePage.routePath);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '・Widget\n'
            '　UIの構成情報と子Widgetを保持\n'
            '　軽量で生成と破棄にコストがかからない\n',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Text(
            '・Element\n'
            '　WidgetとRenderObjectへの参照を保持\n'
            '　構成情報をWidgetからRenderObjectへ渡す仲介役\n',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Text(
            '・RenderObject\n'
            '　レイアウト・ペイント処理を行う描写エンジンの本体\n',
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ],
      ),
    );
  }
}
