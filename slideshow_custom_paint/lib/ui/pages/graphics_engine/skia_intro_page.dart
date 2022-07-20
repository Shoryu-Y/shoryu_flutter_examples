import 'package:flutter/material.dart';
import 'package:slideshow_custom_paint/ui/pages/graphics_engine/graphics_engine_subject_page.dart';
import 'package:slideshow_custom_paint/ui/pages/graphics_engine/skia_detail_page.dart';
import 'package:slideshow_custom_paint/ui/widget/templete/screen.dart';

class SkiaIntroPage extends StatelessWidget {
  const SkiaIntroPage({super.key});

  static const routePath = 'skia_introduction';

  @override
  Widget build(BuildContext context) {
    return Screen(
      subject: GraphicsEngineSubjectPage.subjectName,
      onPressed: () {
        GraphicsEngineSubjectPage.pushSubRoute(
          context,
          subRoute: SkiaDetailPage.routePath,
        );
      },
      child: Center(
        child: SizedBox(
          height: 400,
          child: Image.asset('assets/images/skia_logo.png'),
        ),
      ),
    );
  }
}
