import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:slideshow_custom_paint/ui/pages/examples/examples_page.dart';
import 'package:slideshow_custom_paint/ui/pages/my_profile_page.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key, required this.showGetStarted});

  final bool showGetStarted;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 40,
        vertical: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const _IndexTextButton(
            title: 'MyProfile',
            path: MyProfilePage.routePath,
          ),
          const _IndexTextButton(
            title: 'GraphicsEngine',
            path: MyProfilePage.routePath,
          ),
          const _IndexTextButton(
            title: 'Trees',
            path: MyProfilePage.routePath,
          ),
          const _IndexTextButton(
            title: 'CustomPaint',
            path: MyProfilePage.routePath,
          ),
          const _IndexTextButton(
            title: 'Examples',
            path: ExamplesPage.routePath,
          ),
          if (showGetStarted)
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ElevatedButton(
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0),
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  foregroundColor: MaterialStateProperty.all(Colors.blueAccent),
                  shape: MaterialStateProperty.all(const StadiumBorder()),
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 15,
                    ),
                  ),
                ),
                onPressed: () {
                  GoRouter.of(context).go(MyProfilePage.routePath);
                },
                child: Text(
                  'Get started',
                  style: Theme.of(context).textTheme.bodyText2?.copyWith(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.w700,
                      ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class _IndexTextButton extends StatelessWidget {
  const _IndexTextButton({required this.title, required this.path});

  final String title;
  final String path;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(
            horizontal: 20,
          ),
        ),
      ),
      onPressed: () {
        context.go(path);
      },
      child: Text(
        title,
        style: Theme.of(context).textTheme.bodyText2,
      ),
    );
  }
}
