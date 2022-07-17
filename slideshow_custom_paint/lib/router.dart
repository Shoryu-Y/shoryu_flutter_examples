import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:slideshow_custom_paint/ui/pages/examples/examples_page.dart';
import 'package:slideshow_custom_paint/ui/pages/examples/slide_example_page.dart';
import 'package:slideshow_custom_paint/ui/pages/my_profile_page.dart';
import 'package:slideshow_custom_paint/ui/pages/title_page.dart';

final routerProvider = Provider((ref) => _Router.router);

class _Router {
  const _Router();

  static final router = GoRouter(
    initialLocation: TitlePage.routePath,
    routes: [
      GoRoute(
        path: TitlePage.routePath,
        builder: (context, _) => const TitlePage(),
      ),
      GoRoute(
        path: MyProfilePage.routePath,
        builder: (context, _) => const MyProfilePage(),
      ),
      GoRoute(
        path: ExamplesPage.routePath,
        builder: (context, _) => const ExamplesPage(),
        routes: [
          GoRoute(
            path: SlideExamplePage.routePath,
            builder: (context, _) => const SlideExamplePage(),
          ),
        ],
      ),
      // GoRoute(
      //   path: SlideExamplePage.routePath,
      //   builder: (context, _) => const SlideExamplePage(),
      // ),
    ],
    debugLogDiagnostics: true,
  );
}
