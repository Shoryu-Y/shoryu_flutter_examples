import 'package:flutter/material.dart';

class CodeView extends StatelessWidget {
  const CodeView({super.key, required this.code, this.style});

  final String code;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.6),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        code,
        style: style ??
            Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 30),
      ),
    );
  }
}
