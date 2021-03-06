import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:slideshow_custom_paint/ui/pages/my_profile/my_profile_subject_page.dart';
import 'package:slideshow_custom_paint/ui/widget/custom_paint/slide.dart';

class TitlePage extends StatelessWidget {
  const TitlePage({super.key});

  static const routePath = '/';

  @override
  Widget build(BuildContext context) {
    return Slide(
      onPressed: () {
        context.go(MyProfileSubjectPage.routePath);
      },
      child: Stack(
        children: [
          Center(
            child: Text(
              'Flutter - Design Original UI',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                'Presented by 辰べえ',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
