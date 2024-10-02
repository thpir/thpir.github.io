import 'package:flutter/material.dart';
import 'package:portfolio/data/project_list.dart';
import 'package:portfolio/global_variables.dart';
import 'package:portfolio/models/project.dart';
import 'package:portfolio/widgets/projects_section/project_card.dart';
import 'package:portfolio/widgets/projects_section/project_detail.dart';

class ProjectsContent extends StatelessWidget {
  const ProjectsContent({super.key});

  List<Widget> list(double width) {
    List<Widget> projectList = [];
    for (Project project in ProjectList.projectList) {
      projectList.add(
        ProjectCard(project: project)
        // ProjectDetail(
        //   width: width,
        //   height: width / 2,
        //   project: project,
        // ),
      );
    }
    return projectList;
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: getScreenPadding(width), vertical: 50 + width / 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'PROJECTS',
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
            Wrap(
              children: [
                ...list(width)
              ],
            )
          ],
        ),
      ),
    );
  }
}
