import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:slideshow_custom_paint/ui/widget/pages/subject.dart';

class TreesPage extends StatelessWidget {
  const TreesPage({super.key});

  static const routePath = '/trees';

  static void pushSubRoute(BuildContext context, {required String subRoute}) {
    context.push('$routePath/$subRoute');
  }

  @override
  Widget build(BuildContext context) {
    return Subject(
      subject: 'Trees',
      onPressed: () {
        pushSubRoute(context, subRoute: '');
      },
    );
  }
}
