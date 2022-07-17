import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:slideshow_custom_paint/ui/widget/slide.dart';

class Subject extends StatelessWidget {
  const Subject({super.key, required this.subject, required this.onPressed});

  final String subject;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Slide(
      onPressed: onPressed,
      child: Center(
        child: Text(
          subject,
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}
