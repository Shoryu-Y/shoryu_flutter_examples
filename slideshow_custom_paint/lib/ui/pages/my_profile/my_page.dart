import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slideshow_custom_paint/ui/pages/my_profile/career_page.dart';
import 'package:slideshow_custom_paint/ui/pages/my_profile/my_profile_page.dart';
import 'package:slideshow_custom_paint/ui/widget/label.dart';
import 'package:slideshow_custom_paint/ui/widget/pages/body.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  static const routePath = 'my_page';

  @override
  Widget build(BuildContext context) {
    return Body(
      subject: MyProfilePage.subjectName,
      onPressed: () {
        MyProfilePage.pushSubRoute(context, subRoute: CareerPage.routePath);
      },
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                    'https://pbs.twimg.com/profile_images/1224270756143456257/TvdwJjTS_400x400.jpg'),
              ),
            ),
            Expanded(
              child: Column(
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
                  const Label(
                    title: '@shoryu927',
                    imagePath: 'assets/images/twitter_logo.png',
                  ),
                  const Label(
                    title: 'Shoryu-Y',
                    imagePath: 'assets/images/github_logo.png',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
