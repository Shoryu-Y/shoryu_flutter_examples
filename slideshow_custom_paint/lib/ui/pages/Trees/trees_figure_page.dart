import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:slideshow_custom_paint/common/app_colors.dart';
import 'package:slideshow_custom_paint/ui/pages/Trees/trees_subject_page.dart';
import 'package:slideshow_custom_paint/ui/pages/custom_paint/custom_paint_subject_page.dart';
import 'package:slideshow_custom_paint/ui/widget/custom_paint/arrow_down.dart';
import 'package:slideshow_custom_paint/ui/widget/custom_paint/arrow_left.dart';
import 'package:slideshow_custom_paint/ui/widget/custom_paint/arrow_right.dart';
import 'package:slideshow_custom_paint/ui/widget/view/body_view.dart';

class TreesFigurePage extends StatelessWidget {
  const TreesFigurePage({super.key});

  static const routePath = 'figure';

  @override
  Widget build(BuildContext context) {
    return BodyView(
      subject: TreesSubjectPage.subjectName,
      onPressed: () {
        context.go(CustomPaintSubjectPage.routePath);
      },
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 200,
                  height: 100,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border.all(width: 3),
                      borderRadius: BorderRadius.circular(50),
                      color: AppColors.blue1,
                    ),
                    child: Center(
                      child: Text(
                        'Widget',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            ?.apply(color: Colors.black),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      ArrowRight(length: 100),
                      Text('createElement()'),
                    ],
                  ),
                ),
                SizedBox(
                  width: 200,
                  height: 200,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border.all(width: 3),
                      borderRadius: BorderRadius.circular(150),
                      color: AppColors.blue2,
                    ),
                    child: Center(
                      child: Text(
                        'Element',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            ?.apply(color: Colors.black),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      ArrowRight(length: 100),
                      Text('createRenderObject()'),
                    ],
                  ),
                ),
                SizedBox(
                  width: 200,
                  height: 200,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border.all(width: 3),
                      color: AppColors.blue3,
                    ),
                    child: Center(
                      child: Text(
                        'Render\n  Object',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            ?.apply(color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SizedBox(width: 100),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                  child: ArrowDown(width: 50, length: 30,),
                ),
                SizedBox(
                  width: 100,
                  child: Text('setState'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 200,
                  height: 100,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border.all(width: 3),
                      borderRadius: BorderRadius.circular(50),
                      color: AppColors.blue1,
                    ),
                    child: Center(
                      child: Text(
                        'Widget',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            ?.apply(color: Colors.black),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      ArrowLeft(length: 100),
                      Text('canUpdate()'),
                      ArrowRight(length: 100),
                      Text('true'),
                    ],
                  ),
                ),
                SizedBox(
                  width: 200,
                  height: 200,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border.all(width: 3),
                      borderRadius: BorderRadius.circular(150),
                      color: AppColors.blue2,
                    ),
                    child: Center(
                      child: Text(
                        'Element',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            ?.apply(color: Colors.black),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      ArrowRight(length: 100),
                      Text('updateRenderObject()'),
                    ],
                  ),
                ),
                SizedBox(
                  width: 200,
                  height: 200,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border.all(width: 3),
                      color: AppColors.blue3,
                    ),
                    child: Center(
                      child: Text(
                        'Render\n  Object',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            ?.apply(color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
