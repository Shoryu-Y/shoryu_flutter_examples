import 'package:flutter/material.dart';
import 'package:slideshow_custom_paint/ui/pages/examples/examples_page.dart';
import 'package:slideshow_custom_paint/ui/widget/pages/body.dart';
import 'package:slideshow_custom_paint/ui/widget/pages/subject.dart';

class TurnPageTransitionExamplePage extends StatelessWidget {
  const TurnPageTransitionExamplePage({super.key});

  static const routePath = 'turn_page_transition';

  @override
  Widget build(BuildContext context) {
    return Body(
      subject: ExamplesPage.subjectName,
      onPressed: () {},
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'Turn Page Transition',
              style: Theme.of(context).textTheme.headline1,
            ),
            Text(
              '0.1.3',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
      ),
    );
  }
}
