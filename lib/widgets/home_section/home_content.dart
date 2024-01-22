import 'package:flutter/material.dart';
import 'package:portfolio/global_variables.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Center(
      child: Padding(
        padding: EdgeInsets.only(
            left: getScreenPadding(width), right: getScreenPadding(width), top: 50, bottom: 50 + width / 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'THIJS PIRMEZ',
              style: TextStyle(
                  color: onPrimaryActive,
                  fontSize: getTitleFontSize(width),
                  fontWeight: FontWeight.bold,
                  letterSpacing: getTitleFontSize(width) * 0.15),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'APP DEVELOPER',
              style: TextStyle(
                  color: onPrimaryActive,
                  fontSize: getSubtitleFontSize(width),
                  fontWeight: FontWeight.bold,
                  letterSpacing: getSubtitleFontSize(width) * 0.15),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: getDividerHeight(width),
            ),
            SizedBox(
              width: width * 0.8 > 500 ? 500 : width * 0.8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Divider(
                    height: 1,
                    color: accentColor2,
                  ),
                  SizedBox(
                    height: getDividerHeight(width),
                  ),
                  const Text(
                    "\"I believe smartphones are the modern man's Swiss army knife. When it comes to developing applications to make one's life easier, the possibilities are limited only by the developer's imagination.\"",
                    style: TextStyle(
                        color: onPrimaryActive,
                        fontStyle: FontStyle.italic,
                        fontSize: 16,
                        letterSpacing: 1.5),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: getDividerHeight(width),
                  ),
                  const Divider(
                    height: 1,
                    color: accentColor2,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
