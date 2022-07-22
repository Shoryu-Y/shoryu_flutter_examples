import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:slideshow_custom_paint/ui/pages/examples/examples_subject_page.dart';
import 'package:slideshow_custom_paint/ui/thanks_page.dart';
import 'package:slideshow_custom_paint/ui/widget/view/body_view.dart';
import 'package:url_launcher/url_launcher_string.dart';

class TurnPageTransitionExamplePage extends StatelessWidget {
  const TurnPageTransitionExamplePage({super.key});

  static const routePath = 'turn_page_transition';

  @override
  Widget build(BuildContext context) {
    return BodyView(
      subject: ExamplesSubjectPage.subjectName,
      onPressed: () {
        context.go(ThanksPage.routePath);
      },
      child: Center(
        child: GestureDetector(
          onTap: () {
            launchUrlString('https://pub.dev/packages/turn_page_transition');
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'turn_page_transition',
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                '0.1.3',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
