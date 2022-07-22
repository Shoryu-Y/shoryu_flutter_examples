import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:slideshow_custom_paint/common/app_colors.dart';
import 'package:slideshow_custom_paint/ui/pages/Trees/trees_detail_page.dart';
import 'package:slideshow_custom_paint/ui/pages/Trees/trees_figure_page.dart';
import 'package:slideshow_custom_paint/ui/pages/Trees/trees_subject_page.dart';
import 'package:slideshow_custom_paint/ui/pages/custom_paint/custom_paint_implement_page.dart';
import 'package:slideshow_custom_paint/ui/pages/custom_paint/custom_paint_role_page.dart';
import 'package:slideshow_custom_paint/ui/pages/custom_paint/custom_paint_subject_page.dart';
import 'package:slideshow_custom_paint/ui/pages/custom_paint/custom_painter_page.dart';
import 'package:slideshow_custom_paint/ui/pages/custom_paint/draw_rect_page.dart';
import 'package:slideshow_custom_paint/ui/pages/custom_paint/draw_path_page.dart';
import 'package:slideshow_custom_paint/ui/pages/examples/examples_subject_page.dart';
import 'package:slideshow_custom_paint/ui/pages/examples/reference_image_page.dart';
import 'package:slideshow_custom_paint/ui/pages/examples/slide_example_page.dart';
import 'package:slideshow_custom_paint/ui/pages/examples/turn_page_transition_example_page.dart';
import 'package:slideshow_custom_paint/ui/pages/graphics_engine/graphics_engine_subject_page.dart';
import 'package:slideshow_custom_paint/ui/pages/graphics_engine/platforms_page.dart';
import 'package:slideshow_custom_paint/ui/pages/graphics_engine/skia_detail_page.dart';
import 'package:slideshow_custom_paint/ui/pages/graphics_engine/skia_intro_page.dart';
import 'package:slideshow_custom_paint/ui/pages/my_profile/career_page.dart';
import 'package:slideshow_custom_paint/ui/pages/my_profile/my_profile_page.dart';
import 'package:slideshow_custom_paint/ui/pages/my_profile/my_profile_subject_page.dart';
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
        path: MyProfileSubjectPage.routePath,
        builder: (_, __) => const MyProfileSubjectPage(),
        routes: [
          GoRoute(
            path: MyProfilePage.routePath,
            builder: (_, __) => const MyProfilePage(),
          ),
          GoRoute(
            path: CareerPage.routePath,
            builder: (_, __) => const CareerPage(),
          ),
        ],
      ),
      GoRoute(
        path: GraphicsEngineSubjectPage.routePath,
        builder: (_, __) => const GraphicsEngineSubjectPage(),
        routes: [
          GoRoute(
            path: PlatformsPage.routePath,
            builder: (_, __) => const PlatformsPage(),
          ),
          GoRoute(
            path: SkiaIntroPage.routePath,
            builder: (_, __) => const SkiaIntroPage(),
          ),
          GoRoute(
            path: SkiaDetailPage.routePath,
            builder: (_, __) => const SkiaDetailPage(),
          ),
        ],
      ),
      GoRoute(
        path: TreesSubjectPage.routePath,
        builder: (_, __) => const TreesSubjectPage(),
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
        path: CustomPaintSubjectPage.routePath,
        builder: (_, __) => const CustomPaintSubjectPage(),
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
          GoRoute(
            path: DrawRectPage.routePath,
            builder: (_, __) => const DrawRectPage(),
          ),
          GoRoute(
            path: DrawPathPage.routePath,
            builder: (_, __) => const DrawPathPage(),
          ),
        ],
      ),
      GoRoute(
        path: ExamplesSubjectPage.routePath,
        builder: (_, __) => const ExamplesSubjectPage(),
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
