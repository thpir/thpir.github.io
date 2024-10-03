// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/global_variables.dart';
import 'package:portfolio/models/project.dart';
import 'package:portfolio/widgets/clippers/bottom_skew_cut.dart';
import 'package:portfolio/widgets/clippers/navbar_skew_cut.dart';

class ProjectEnergyDesk extends StatelessWidget {
  final Project project;
  const ProjectEnergyDesk(this.project, {super.key});

  @override
  Widget build(BuildContext context) {
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
              MediaSection(project.screenshots, downloadLink: project.downloadLink,),
              const BottomNavBar(),
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
  final String downloadLink;
  const MediaSection(this.screenshots, {required this.downloadLink, super.key});

  List<Widget> screenShots() {
    return screenshots
        .map((e) => Container(
              margin: const EdgeInsets.all(16.0),
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
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
        padding: EdgeInsets.symmetric(vertical: 50 + width / 10),
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
              child: ConstrainedBox(
                constraints: const BoxConstraints(
                  maxHeight: 500,
                ),
                child: CarouselView(
                  scrollDirection: Axis.horizontal,
                  backgroundColor: onPrimaryActive,
                  itemExtent: 300,
                  shrinkExtent: 200,
                  itemSnapping: true,
                  children: [...screenShots()],
                ),
              ),
            ),
            SizedBox(
              height: getDividerHeight(width),
            ),
            FilledButton.icon(
              onPressed: () {
                js.context.callMethod('open',
                    [downloadLink]);
              },
              icon:
                  Image.asset("assets/images/google_play_icon.webp", width: 24),
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all<Color>(primaryColor),
                padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
                    const EdgeInsets.all(16)),
                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              label: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "GET IT ON",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "Google Play",
                    style: TextStyle(
                      fontSize: 20,
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return ClipPath(
      clipper: NavBarSkewCut(clipheight: width / 10),
      child: Container(
        padding: EdgeInsets.only(top: width / 10),
        width: double.infinity,
        color: primaryColor,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                  child: IconButton(
                      hoverColor: accentColor1,
                      onPressed: () {
                        js.context.callMethod('open', [
                          'https://be.linkedin.com/in/thijs-pirmez-973327230'
                        ]);
                      },
                      icon: const Icon(
                        FontAwesomeIcons.linkedinIn,
                        color: onPrimaryActive,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                  child: IconButton(
                      hoverColor: accentColor1,
                      onPressed: () {
                        js.context.callMethod('open', ['https://g.dev/thpir']);
                      },
                      icon: const Icon(
                        FontAwesomeIcons.android,
                        color: onPrimaryActive,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                  child: IconButton(
                      hoverColor: accentColor1,
                      onPressed: () {
                        js.context
                            .callMethod('open', ['https://github.com/thpir']);
                      },
                      icon: const Icon(
                        FontAwesomeIcons.github,
                        color: onPrimaryActive,
                      )),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 16.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Made by Thijs Pirmez, created with ',
                      style: TextStyle(color: onPrimaryActive),
                    ),
                    FlutterLogo(
                      size: 16,
                    )
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
