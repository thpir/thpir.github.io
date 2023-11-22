import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/data/project_list.dart';
import 'package:portfolio/models/project.dart';
import 'package:portfolio/widgets/project_tile.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return CarouselSlider(
          options: CarouselOptions(
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.scale,
              scrollDirection: Axis.vertical,
              aspectRatio: 3 / 4,
              clipBehavior: Clip.antiAlias,
              enableInfiniteScroll: false,
              //autoPlay: true
            ),
          items: ProjectList.projectList
              .map((Project project) => ProjectTile(
                  width: width, height: height, project: project))
              .toList(),
        );
  }
}
