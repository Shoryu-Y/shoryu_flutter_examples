import 'package:flutter/material.dart';
import 'package:slideshow_custom_paint/ui/widget/custom_paint/slide.dart';

class SubjectScreen extends StatelessWidget {
  const SubjectScreen({super.key, required this.subject, required this.onPressed});

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
