import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:slideshow_custom_paint/common/app_colors.dart';
import 'package:slideshow_custom_paint/ui/pages/Trees/trees_page.dart';
import 'package:slideshow_custom_paint/ui/pages/custom_paint/custom_paint_page.dart';
import 'package:slideshow_custom_paint/ui/pages/examples/examples_page.dart';
import 'package:slideshow_custom_paint/ui/pages/examples/reference_image_page.dart';
import 'package:slideshow_custom_paint/ui/pages/examples/slide_example_page.dart';
import 'package:slideshow_custom_paint/ui/pages/examples/turn_page_transition_example_page.dart';
import 'package:slideshow_custom_paint/ui/pages/graphics_engine/graphics_engine_page.dart';
import 'package:slideshow_custom_paint/ui/pages/my_profile/my_profile_page.dart';
import 'package:slideshow_custom_paint/ui/pages/title_page.dart';
import 'package:turn_page_transition/turn_page_transition.dart';

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
        path: GraphicsEnginePage.routePath,
        builder: (context, _) => const GraphicsEnginePage(),
      ),
      GoRoute(
        path: TreesPage.routePath,
        builder: (context, _) => const TreesPage(),
      ),
      GoRoute(
        path: CustomPaintPage.routePath,
        builder: (context, _) => const CustomPaintPage(),
      ),
      GoRoute(
        path: ExamplesPage.routePath,
        builder: (context, _) => const ExamplesPage(),
        routes: [
          GoRoute(
            path: SlideExamplePage.routePath,
            builder: (context, _) => const SlideExamplePage(),
          ),
          GoRoute(
            path: ReferenceImagePage.routePath,
            builder: (context, _) => const ReferenceImagePage(),
          ),
          GoRoute(
            path: TurnPageTransitionExamplePage.routePath,
            pageBuilder: (context, _) => CustomTransitionPage(
              child: const TurnPageTransitionExamplePage(),
              transitionsBuilder: (
                context,
                animation,
                secondaryAnimation,
                child,
              ) =>
                  TurnPageTransition(
                animation: animation,
                overleafColor: AppColors.overLeafColor,
                child: child,
              ),
            ),
          ),
        ],
      ),
    ],
    debugLogDiagnostics: true,
  );
}
