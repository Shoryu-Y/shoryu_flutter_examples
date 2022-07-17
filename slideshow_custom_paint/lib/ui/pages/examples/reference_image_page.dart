import 'package:flutter/material.dart';
import 'package:slideshow_custom_paint/ui/pages/examples/examples_page.dart';
import 'package:slideshow_custom_paint/ui/pages/examples/turn_page_transition_example_page.dart';
import 'package:slideshow_custom_paint/ui/widget/image_paint.dart';
import 'package:slideshow_custom_paint/ui/widget/slide.dart';

class ReferenceImagePage extends StatelessWidget {
  const ReferenceImagePage({super.key});

  static const routePath = 'reference_design';

  @override
  Widget build(BuildContext context) {
    return Slide(
      onPressed: () {
        ExamplesPage.pushSubRoute(
          context,
          subRoute: TurnPageTransitionExamplePage.routePath,
        );
      },
      child: Stack(
        children: [
          LayoutBuilder(
            builder: (context, constraint) {
              return ColoredBox(
                color: Colors.black.withOpacity(0.5),
                child: SizedBox(
                  width: constraint.maxWidth,
                  height: constraint.maxHeight,
                ),
              );
            },
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Text(
                  ExamplesPage.subjectName,
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
              const Expanded(
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: ImagePaint(
                        imagePath: 'assets/images/reference_design.png'),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
