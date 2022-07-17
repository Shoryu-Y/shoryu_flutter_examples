import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:slideshow_custom_paint/ui/pages/examples/slide_example_page.dart';
import 'package:slideshow_custom_paint/ui/widget/pages/subject.dart';

class ExamplesPage extends StatelessWidget {
  const ExamplesPage({super.key});

  static const routePath = '/examples';

  static void pushSubRoute(BuildContext context, {required String subRoute}) {
    context.push('$routePath/$subRoute');
  }

  @override
  Widget build(BuildContext context) {
    return Subject(
      subject: 'Examples',
      onPressed: () {
        pushSubRoute(context, subRoute: SlideExamplePage.routePath);
      },
    );
  }
}
