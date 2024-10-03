import 'package:flutter/material.dart';
import 'package:portfolio/global_variables.dart';
import 'package:portfolio/models/project.dart';

class ProjectCard extends StatelessWidget {
  final Project project;
  const ProjectCard({required this.project, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(32),
      width: 180,
      height: 300,
      clipBehavior: Clip.hardEdge,
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: backgroundColor)),
      child: Column(
        children: [
          Container(
            color: backgroundColor,
            padding: const EdgeInsets.all(8),
            width: double.infinity,
            child: Text(
              project.company,
              style: const TextStyle(
                  color: onPrimaryActive,
                  fontSize: 16,
                  letterSpacing: 1.5),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: CircleAvatar(
              foregroundImage: AssetImage(project.icon),
              backgroundColor: accentColor1,
              radius: 50,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                project.title,
                style: const TextStyle(
                    color: primaryColor,
                    fontSize: 16,
                    letterSpacing: 1.5
                    //fontWeight: FontWeight.bold
                  ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, project.route, arguments: project);
              }, 
              child: const Text(
                "Read more",
                style: TextStyle(
                  color: accentColor1
                ),
              )),
          )
        ],
      ),
    );
  }
}
