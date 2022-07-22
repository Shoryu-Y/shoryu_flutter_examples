import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:slideshow_custom_paint/ui/pages/custom_paint/custom_paint_role_page.dart';
import 'package:slideshow_custom_paint/ui/widget/templete/subject_screem.dart';

class CustomPaintSubjectPage extends StatelessWidget {
  const CustomPaintSubjectPage({super.key});

  static const routePath = '/custom_paint';
  static const subjectName = 'CustomPaint';

  static void pushSubRoute(BuildContext context, {required String subRoute}) {
    context.push('$routePath/$subRoute');
  }

  @override
  Widget build(BuildContext context) {
    return SubjectScreen(
      subject: 'CustomPaint',
      onPressed: () {
        pushSubRoute(context, subRoute: CustomPaintRolePage.routePath);
      },
    );
  }
}
