import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:slideshow_custom_paint/common/app_colors.dart';
import 'package:slideshow_custom_paint/ui/pages/Trees/trees_detail_page.dart';
import 'package:slideshow_custom_paint/ui/pages/Trees/trees_figure_page.dart';
import 'package:slideshow_custom_paint/ui/pages/Trees/trees_page.dart';
import 'package:slideshow_custom_paint/ui/pages/custom_paint/custom_paint_implement_page.dart';
import 'package:slideshow_custom_paint/ui/pages/custom_paint/custom_paint_page.dart';
import 'package:slideshow_custom_paint/ui/pages/custom_paint/custom_paint_role_page.dart';
import 'package:slideshow_custom_paint/ui/pages/custom_paint/custom_painter_page.dart';
import 'package:slideshow_custom_paint/ui/pages/examples/examples_page.dart';
import 'package:slideshow_custom_paint/ui/pages/examples/reference_image_page.dart';
import 'package:slideshow_custom_paint/ui/pages/examples/slide_example_page.dart';
import 'package:slideshow_custom_paint/ui/pages/examples/turn_page_transition_example_page.dart';
import 'package:slideshow_custom_paint/ui/pages/graphics_engine/graphics_engine_page.dart';
import 'package:slideshow_custom_paint/ui/pages/graphics_engine/platforms_page.dart';
import 'package:slideshow_custom_paint/ui/pages/graphics_engine/skia_detail_page.dart';
import 'package:slideshow_custom_paint/ui/pages/graphics_engine/skia_page.dart';
import 'package:slideshow_custom_paint/ui/pages/my_profile/career_page.dart';
import 'package:slideshow_custom_paint/ui/pages/my_profile/my_page.dart';
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
        builder: (_, __) => const TitlePage(),
      ),
      GoRoute(
        path: MyProfilePage.routePath,
        builder: (_, __) => const MyProfilePage(),
        routes: [
          GoRoute(
            path: MyPage.routePath,
            builder: (_, __) => const MyPage(),
          ),
          GoRoute(
            path: CareerPage.routePath,
            builder: (_, __) => const CareerPage(),
          ),
        ],
      ),
      GoRoute(
        path: GraphicsEnginePage.routePath,
        builder: (_, __) => const GraphicsEnginePage(),
        routes: [
          GoRoute(
            path: PlatformsPage.routePath,
            builder: (_, __) => const PlatformsPage(),
          ),
          GoRoute(
            path: SkiaPage.routePath,
            builder: (_, __) => const SkiaPage(),
          ),
          GoRoute(
            path: SkiaDetailPage.routePath,
            builder: (_, __) => const SkiaDetailPage(),
          ),
        ],
      ),
      GoRoute(
        path: TreesPage.routePath,
        builder: (_, __) => const TreesPage(),
        routes: [
          GoRoute(
            path: TreesDetailPage.routePath,
            builder: (_, __) => const TreesDetailPage(),
          ),
          GoRoute(
            path: TreesFigurePage.routePath,
            builder: (_, __) => const TreesFigurePage(),
          ),
        ],
      ),
      GoRoute(
        path: CustomPaintPage.routePath,
        builder: (_, __) => const CustomPaintPage(),
        routes: [
          GoRoute(
            path: CustomPaintRolePage.routePath,
            builder: (_, __) => const CustomPaintRolePage(),
          ),
          GoRoute(
            path: ImplementPage.routePath,
            builder: (_, __) => const ImplementPage(),
          ),
          GoRoute(
            path: CustomPainterPage.routePath,
            builder: (_, __) => const CustomPainterPage(),
          ),
        ],
      ),
      GoRoute(
        path: ExamplesPage.routePath,
        builder: (_, __) => const ExamplesPage(),
        routes: [
          GoRoute(
            path: SlideExamplePage.routePath,
            builder: (_, __) => const SlideExamplePage(),
          ),
          GoRoute(
            path: ReferenceImagePage.routePath,
            builder: (_, __) => const ReferenceImagePage(),
          ),
          GoRoute(
            path: TurnPageTransitionExamplePage.routePath,
            pageBuilder: (_, __) => CustomTransitionPage(
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
