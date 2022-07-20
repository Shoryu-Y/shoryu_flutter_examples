import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:slideshow_custom_paint/ui/pages/graphics_engine/platforms_page.dart';
import 'package:slideshow_custom_paint/ui/widget/templete/subject_screem.dart';

class GraphicsEngineSubjectPage extends StatelessWidget {
  const GraphicsEngineSubjectPage({super.key});

  static const routePath = '/graphics_engine';
  static const subjectName = 'Graphics Engine';

  static void pushSubRoute(BuildContext context, {required String subRoute}) {
    context.push('$routePath/$subRoute');
  }

  @override
  Widget build(BuildContext context) {
    return SubjectScreen(
      subject: subjectName,
      onPressed: () {
        pushSubRoute(context, subRoute: PlatformsPage.routePath);
      },
    );
  }
}
