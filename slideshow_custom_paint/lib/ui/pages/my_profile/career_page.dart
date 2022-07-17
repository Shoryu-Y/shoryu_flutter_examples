import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slideshow_custom_paint/ui/pages/graphics_engine/graphics_engine_page.dart';
import 'package:slideshow_custom_paint/ui/pages/my_profile/my_profile_page.dart';
import 'package:slideshow_custom_paint/ui/widget/pages/body.dart';

class CareerPage extends StatelessWidget {
  const CareerPage({super.key});

  static const routePath = 'career';

  @override
  Widget build(BuildContext context) {
    return Body(
      subject: MyProfilePage.subjectName,
      onPressed: () {
        context.go(GraphicsEnginePage.routePath);
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
                  Text('経歴', style: Theme.of(context).textTheme.bodyText1),
                  Text(
                    '・2019年10月 ~\n'
                    '　九州大学を休学',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  Text(
                    '・2019年10月 ~ 2021年1月\n'
                    '　株式会社nanoFreaksのエンジニアとして\n'
                    '　海難事故救助アプリを作成',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  Text(
                    '・2021年1月 ~ 2022年3月\n'
                    '　業務委託でFlutterアプリ開発複数',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  Text(
                    '・2022年3月 ~\n'
                    '　復学しプラズマ研究室に所属&就活中',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  const SizedBox(height: 50),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
