import 'package:flutter/material.dart';
import 'package:slideshow_custom_paint/ui/pages/graphics_engine/graphics_engine_page.dart';
import 'package:slideshow_custom_paint/ui/pages/graphics_engine/skia_page.dart';
import 'package:slideshow_custom_paint/ui/widget/pages/body.dart';

class PlatformsPage extends StatelessWidget {
  const PlatformsPage({super.key});

  static const routePath = 'platforms';

  @override
  Widget build(BuildContext context) {
    return Body(
      subject: GraphicsEnginePage.subjectName,
      onPressed: () {
        GraphicsEnginePage.pushSubRoute(context, subRoute: SkiaPage.routePath);
      },
      child: Padding(
        padding: const EdgeInsets.all(30),
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
      ),
    );
  }
}
