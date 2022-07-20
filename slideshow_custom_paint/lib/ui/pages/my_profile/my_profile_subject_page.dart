import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:slideshow_custom_paint/ui/pages/my_profile/my_profile_page.dart';
import 'package:slideshow_custom_paint/ui/widget/templete/subject_screem.dart';

class MyProfileSubjectPage extends StatelessWidget {
  const MyProfileSubjectPage({super.key});

  static const routePath = '/my_profile';
  static const subjectName = 'My Profile';

  static void pushSubRoute(BuildContext context, {required String subRoute}) {
    context.push('$routePath/$subRoute');
  }

  @override
  Widget build(BuildContext context) {
    return SubjectScreen(
      subject: subjectName,
      onPressed: () {
        pushSubRoute(context, subRoute: MyProfilePage.routePath);
      },
    );
  }
}
