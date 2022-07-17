import 'package:flutter/material.dart';

class Label extends StatelessWidget {
  const Label({super.key, required this.title, required this.imagePath});

  final String title;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 40,
          height: 40,
          child: Image.asset(imagePath),
        ),
        const SizedBox(width: 10),
        Text(
          title,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    );
  }
}
