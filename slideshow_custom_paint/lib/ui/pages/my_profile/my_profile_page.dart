import 'package:flutter/material.dart';
import 'package:slideshow_custom_paint/ui/pages/my_profile/career_page.dart';
import 'package:slideshow_custom_paint/ui/pages/my_profile/my_profile_subject_page.dart';
import 'package:slideshow_custom_paint/ui/widget/link_label.dart';
import 'package:slideshow_custom_paint/ui/widget/templete/split_screen.dart';

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({super.key});

  static const routePath = 'introduction';

  @override
  Widget build(BuildContext context) {
    return SplitScreen(
      subject: MyProfileSubjectPage.subjectName,
      onPressed: () {
        MyProfileSubjectPage.pushSubRoute(
          context,
          subRoute: CareerPage.routePath,
        );
      },
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network(
              'https://pbs.twimg.com/profile_images/1224270756143456257/TvdwJjTS_400x400.jpg'),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('たつべえ', style: Theme.of(context).textTheme.headline2),
            Text(
              '・九州大学工学部\n　電気情報工学科4年生(就活中)',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text(
              '・落語研究会部員(引退済み)',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text(
              '・Flutter歴：2.5年',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            const SizedBox(height: 50),
            const LinkLabel(
              title: '@shoryu927',
              imagePath: 'assets/images/twitter_logo.png',
              url: 'https://twitter.com/shoryu927',
            ),
            const LinkLabel(
              title: 'Shoryu-Y',
              imagePath: 'assets/images/github_logo.png',
              url: 'https://github.com/Shoryu-Y',
            ),
          ],
        ),
      ],
    );
  }
}
