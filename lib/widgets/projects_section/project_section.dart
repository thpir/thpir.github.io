import 'package:flutter/material.dart';
import 'package:portfolio/controllers/navigation_controller.dart';
import 'package:portfolio/global_variables.dart';
import 'package:portfolio/widgets/projects_section/projects_content.dart';
import 'package:provider/provider.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<NavigationController>(context);
    return Container(
      key: controller.projectsKey,
      constraints: BoxConstraints(
        minHeight: MediaQuery.of(context).size.height,
        minWidth: MediaQuery.of(context).size.width,
      ),
      color: onPrimaryActive,
      child: const ProjectsContent(),
    );
  }
}