import 'package:flutter/material.dart';
import 'package:slideshow_custom_paint/ui/pages/graphics_engine/graphics_engine_subject_page.dart';
import 'package:slideshow_custom_paint/ui/pages/graphics_engine/skia_intro_page.dart';
import 'package:slideshow_custom_paint/ui/widget/templete/screen.dart';

class PlatformsPage extends StatelessWidget {
  const PlatformsPage({super.key});

  static const routePath = 'platforms';

  @override
  Widget build(BuildContext context) {
    return Screen(
      subject: GraphicsEngineSubjectPage.subjectName,
      onPressed: () {
        GraphicsEngineSubjectPage.pushSubRoute(context, subRoute: SkiaIntroPage.routePath);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Flutterの特徴といえば：',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Align(
            child: Text(
              'Cross-Platform',
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text('iOS', style: Theme.of(context).textTheme.bodyText1),
                  SizedBox(
                    height: 400,
                    child: Image.asset('assets/images/iphone.png'),
                  ),
                ],
              ),
              const SizedBox(width: 100),
              Column(
                children: [
                  Text('Android',
                      style: Theme.of(context).textTheme.bodyText1),
                  SizedBox(
                    height: 400,
                    child: Image.asset('assets/images/pixel.png'),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
