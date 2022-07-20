import 'package:flutter/material.dart';
import 'package:slideshow_custom_paint/ui/pages/examples/examples_subject_page.dart';
import 'package:slideshow_custom_paint/ui/pages/examples/reference_image_page.dart';
import 'package:slideshow_custom_paint/ui/widget/templete/screen.dart';

class SlideExamplePage extends StatelessWidget {
  const SlideExamplePage({super.key});

  static const routePath = 'slide';

  @override
  Widget build(BuildContext context) {
    return Screen(
      subject: 'Example',
      onPressed: () {
        ExamplesSubjectPage.pushSubRoute(
          context,
          subRoute: ReferenceImagePage.routePath,
        );
      },
      child: const SizedBox(),
    );
  }
}
