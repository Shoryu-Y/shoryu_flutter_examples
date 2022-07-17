import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:slideshow_custom_paint/ui/widget/pages/subject.dart';

class CustomPaintPage extends StatelessWidget {
  const CustomPaintPage({super.key});

  static const routePath = '/custom_paint';

  static void pushSubRoute(BuildContext context, {required String subRoute}) {
    context.push('$routePath/$subRoute');
  }

  @override
  Widget build(BuildContext context) {
    return Subject(
      subject: 'CustomPaint',
      onPressed: () {
        pushSubRoute(context, subRoute: '');
      },
    );
  }
}
