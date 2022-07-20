import 'package:flutter/material.dart';
import 'package:slideshow_custom_paint/ui/pages/custom_paint/custom_paint_implement_page.dart';
import 'package:slideshow_custom_paint/ui/pages/custom_paint/custom_paint_page.dart';
import 'package:slideshow_custom_paint/ui/widget/custom_paint/frame_box.dart';
import 'package:slideshow_custom_paint/ui/widget/view/body_view.dart';

class CustomPaintRolePage extends StatelessWidget {
  const CustomPaintRolePage({super.key});

  static const routePath = 'role';

  @override
  Widget build(BuildContext context) {
    return BodyView(
      subject: CustomPaintPage.subjectName,
      onPressed: () {
        CustomPaintPage.pushSubRoute(
          context,
          subRoute: ImplementPage.routePath,
        );
      },
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: FrameBox(
            title: Text(
              'CustomPaint',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            strokeWidth: 5,
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Text(
                '・Widget\n'
                '・Element\n'
                '・RenderObject',
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
