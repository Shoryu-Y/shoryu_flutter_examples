import 'package:flutter/material.dart';
import 'package:slideshow_custom_paint/ui/pages/graphics_engine/graphics_engine_page.dart';
import 'package:slideshow_custom_paint/ui/pages/graphics_engine/skia_detail_page.dart';
import 'package:slideshow_custom_paint/ui/widget/pages/body.dart';

class SkiaPage extends StatelessWidget {
  const SkiaPage({super.key});

  static const routePath = 'skia';

  @override
  Widget build(BuildContext context) {
    return Body(
      subject: GraphicsEnginePage.subjectName,
      onPressed: () {
        GraphicsEnginePage.pushSubRoute(
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
