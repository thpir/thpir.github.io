import 'package:flutter/material.dart';
import 'package:portfolio/global_variables.dart';

class ProjectsContent extends StatelessWidget {
  const ProjectsContent({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: getScreenPadding(width), vertical: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'COMING SOON',
              style: TextStyle(
                  color: primaryColor,
                  fontSize: getSubtitleFontSize(width),
                  fontWeight: FontWeight.bold,
                  letterSpacing: getSubtitleFontSize(width) * 0.15),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
