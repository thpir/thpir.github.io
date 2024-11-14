import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class GetAppButton extends StatelessWidget {
  final String downloadLink;
  final String getAppButtonImage;
  const GetAppButton(this.downloadLink, {required this.getAppButtonImage, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: InkWell(
        onTap: () async {
          final Uri url = Uri.parse(downloadLink);
          await launchUrl(url);
        },
        child: Image.asset(
          getAppButtonImage,
          height: 48,
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
