import 'package:flutter/material.dart';
import 'package:slideshow_custom_paint/ui/widget/custom_paint/slide.dart';

class Screen extends StatelessWidget {
  const Screen({
    super.key,
    required this.subject,
    required this.onPressed,
    required this.child,
  });

  final String subject;
  final VoidCallback onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Slide(
      onPressed: onPressed,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Text(subject, style: Theme.of(context).textTheme.headline3,),
          ),
          Expanded(child: Padding(
            padding: const EdgeInsets.all(30),
            child: child,
          )),
        ],
      ),
    );
  }
}
