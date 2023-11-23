import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/controllers/navigation_controller.dart';
import 'package:portfolio/data/project_list.dart';
import 'package:portfolio/models/project.dart';
import 'package:portfolio/widgets/project_tile.dart';
import 'package:provider/provider.dart';

class ProjectCarousel extends StatelessWidget {
  final double width;
  final double height;
  const ProjectCarousel({required this.width, required this.height, super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<NavigationController>(context);
    return CarouselSlider(
      carouselController: controller.carouselController,
      options: CarouselOptions(
        enlargeCenterPage: true,
        enlargeStrategy: CenterPageEnlargeStrategy.scale,
        scrollDirection: Axis.vertical,
        aspectRatio: 3 / 4,
        clipBehavior: Clip.antiAlias,
        enableInfiniteScroll: false,
        autoPlay: true
      ),
      items: ProjectList.projectList
          .map((Project project) =>
              ProjectTile(width: width, height: height, project: project))
          .toList(),
    );
  }
}
