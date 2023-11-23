import 'package:flutter/material.dart';
import 'package:portfolio/controllers/navigation_controller.dart';
import 'package:portfolio/data/project_list.dart';
import 'package:portfolio/widgets/project_carousel.dart';
import 'package:portfolio/widgets/project_detail.dart';
import 'package:provider/provider.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<NavigationController>(context);
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return width > 1000
      ? Row(
          children: [
            Expanded(
              flex: 2, 
              child: ProjectDetail(project: ProjectList.projectList[controller.activeProject], width: width, height: height,)
            ),
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: SizedBox(
                    height: height,
                    child: ProjectCarousel(
                      width: width,
                      height: height,
                    ),
                  ),
                ))
          ],
        )
      : ProjectCarousel(
          width: width,
          height: height,
        );
  }
}
