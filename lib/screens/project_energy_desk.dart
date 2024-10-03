import 'package:flutter/material.dart';
import 'package:portfolio/global_variables.dart';
import 'package:portfolio/models/project.dart';
import 'package:portfolio/widgets/clippers/bottom_skew_cut.dart';

class ProjectEnergyDesk extends StatelessWidget {
  final Project project;
  const ProjectEnergyDesk(this.project, {super.key});

  @override
  Widget build(BuildContext context) {
    //var project = ModalRoute.of(context)!.settings.arguments as Project;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        foregroundColor: onPrimaryActive,
        title: Text(project.title),
        centerTitle: true,
      ),
      backgroundColor: primaryColor,
      body: Container(
        color: onPrimaryActive,
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height,
          minWidth: MediaQuery.of(context).size.width,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              DescriptionSection(
                  description: project.description, imagePath: project.icon),
              MediaSection(project.screenshots),
            ],
          ),
        ),
      ),
    );
  }
}

class DescriptionSection extends StatelessWidget {
  final String description;
  final String imagePath;
  const DescriptionSection(
      {required this.description, required this.imagePath, super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return ClipPath(
      clipper: BottomSkewCut(clipheight: width / 10),
      child: Container(
        width: width,
        alignment: Alignment.center,
        color: backgroundColor,
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(
                left: getScreenPadding(width),
                right: getScreenPadding(width),
                top: width / 10,
                bottom: width / 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'ABOUT THE PROJECT',
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
                CircleAvatar(
                  backgroundImage: AssetImage(imagePath),
                  radius: 60,
                ),
                SizedBox(
                  height: getDividerHeight(width),
                ),
                Text(
                  description,
                  style: const TextStyle(
                      color: onPrimaryActive, fontSize: 16, letterSpacing: 1.5),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MediaSection extends StatelessWidget {
  final List<String> screenshots;
  const MediaSection(this.screenshots, {super.key});

  List<Widget> screenShots() {
    return screenshots
        .map((e) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                e,
                width: 200,
              ),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: 50 + width / 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'MEDIA',
              style: TextStyle(
                  color: primaryColor,
                  fontSize: getSubtitleFontSize(width),
                  fontWeight: FontWeight.bold,
                  letterSpacing: getSubtitleFontSize(width) * 0.15),
              textAlign: TextAlign.center,
            ),
            SizedBox(
                    height: getDividerHeight(width),
                  ),
            Center(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [...screenShots()],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
