import 'package:flutter/material.dart';
import 'package:portfolio/data/education_list.dart';
import 'package:portfolio/global_variables.dart';
import 'package:portfolio/models/education.dart';
import 'package:portfolio/widgets/education_tile.dart';
import 'package:timeline_tile/timeline_tile.dart';

class EducationScreen extends StatelessWidget {
  const EducationScreen({super.key});

  List<Widget> list(double width) {
    List<Widget> educationList = [];
    for (Education education in EducationList.educationList) {
      educationList.add(
        TimelineTile(
            alignment: TimelineAlign.start,
            beforeLineStyle: const LineStyle(
              color: accentColor2,
              thickness: 1,
            ),
            indicatorStyle: const IndicatorStyle(color: accentColor2),
            endChild: EducationTile(
                screenWidth: width,
                imagePath: education.icon,
                title: education.title,
                content: education.body)),
      );
    }
    return educationList;
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getScreenPadding(width), vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'EDUCATION',
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
              const Text(
                "While I did not pursue software engineering at the university level, I hold two bachelor's degrees. The first in Mechanical Engineering and Production Technology, which I completed in 2012, and the second in Energy Technology, earned in 2014. Although my interest in software development was always present, it wasn't until later in life that I realized it was a passion I wanted to pursue professionally. Subsequently, I embarked on a journey of self-education, undertaking numerous online courses with a primary focus on app development. My goal was to accumulate sufficient knowledge to secure a position as an app developer. This transformative journey commenced in 2021, and by 2023, I achieved a significant milestone: receiving my first job offer as an app developer!",
                style: TextStyle(
                    color: onPrimaryActive, fontSize: 16, letterSpacing: 1.5),
              ),
              SizedBox(
                height: getDividerHeight(width),
              ),
              ...list(width)
            ],
          ),
        ),
      ),
    );
  }
}
