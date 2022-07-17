import 'package:flutter/material.dart';
import 'package:slideshow_custom_paint/ui/widget/slide.dart';

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({super.key});

  static const routePath = '/my_profile';

  @override
  Widget build(BuildContext context) {
    return Slide(
      child: Center(
        child: Text('NEXT', style: Theme.of(context).textTheme.headline1,),
      ),
    );
  }
}
