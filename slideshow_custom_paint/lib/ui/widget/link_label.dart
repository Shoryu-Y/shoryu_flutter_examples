import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class LinkLabel extends StatelessWidget {
  const LinkLabel({
    super.key,
    required this.title,
    required this.imagePath,
    required this.url,
  });

  final String title;
  final String imagePath;
  final String url;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        final canLaunch = await canLaunchUrlString(url);
        if (canLaunch) {
          await launchUrlString(url);
        }
      },
      child: Row(
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
      ),
    );
  }
}
