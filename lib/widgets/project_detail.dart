import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:portfolio/global_variables.dart';
import 'package:portfolio/models/project.dart';

class ProjectDetail extends StatelessWidget {
  final Project project;
  final double width;
  final double height;
  const ProjectDetail(
      {required this.project,
      required this.width,
      required this.height,
      super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(50),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  foregroundImage: AssetImage(project.icon),
                  backgroundColor: accentColor1,
                  radius: 40,
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  project.title,
                  style: TextStyle(
                      color: onPrimaryActive,
                      fontSize: getSubtitleFontSize(width),
                      fontWeight: FontWeight.bold,
                      letterSpacing: getSubtitleFontSize(width) * 0.15),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            SizedBox(
              height: getDividerHeight(width),
            ),
            Text(
              project.description,
              style: const TextStyle(
                  color: onPrimaryActive, fontSize: 16, letterSpacing: 1.5),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  js.context.callMethod('open', [project.downloadLink]);
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith((_) {
                    return accentColor1;
                  }),
                ),
                child: const Text(
                  "Download app",
                  style: TextStyle(color: onPrimaryActive),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
