import 'package:flutter/material.dart';
import 'package:slideshow_custom_paint/ui/widget/custom_paint/slide.dart';

class ThanksPage extends StatelessWidget {
  const ThanksPage({super.key});

  static const routePath = '/thanks';
  static const subjectName = 'Thanks';

  @override
  Widget build(BuildContext context) {
    return Slide(
      onPressed: () {},
      child: Center(
        child: Text(
          'Thank you for your attention！',
          style: Theme.of(context).textTheme.headline2,
        ),
      ),
    );
  }
}
