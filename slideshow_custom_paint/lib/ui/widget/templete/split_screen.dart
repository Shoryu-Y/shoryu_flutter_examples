import 'package:flutter/material.dart';
import 'package:slideshow_custom_paint/ui/widget/view/body_view.dart';

class SplitScreen extends StatelessWidget {
  const SplitScreen({
    super.key,
    required this.subject,
    required this.onPressed,
    required this.children,
  });

  final String subject;
  final VoidCallback onPressed;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return BodyView(
      subject: subject,
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Row(
          children: [
            for (final child in children)
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: child,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
