import 'package:flutter/material.dart';
import 'package:slideshow_custom_paint/ui/widget/pages/body.dart';

class SlideExamplePage extends StatelessWidget {
  const SlideExamplePage({super.key});

  static const routePath = 'slide_example';

  @override
  Widget build(BuildContext context) {
    return Body(
      subject: 'Example',
      onPressed: () {},
      child: const SizedBox(),
    );
  }
}
