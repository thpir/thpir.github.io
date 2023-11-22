import 'package:flutter/material.dart';
import 'package:portfolio/global_variables.dart';
import 'package:portfolio/models/project.dart';

class ProjectTile extends StatelessWidget {
  final double width;
  final double height;
  final Project project;
  const ProjectTile(
      {required this.width,
      required this.height,
      required this.project,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Stack(
        alignment: Alignment.topCenter,
        clipBehavior: Clip.none,
        children: [
          Material(
            color: backgroundColor,
            elevation: 5,
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border:
                      Border.all(color: const Color.fromRGBO(25, 125, 230, .5)),
                  color: const Color.fromRGBO(25, 125, 230, .1),
                ),
                width: width / 2 > 600 ? 600 : width / 1.5,
                child: Padding(
                  padding: EdgeInsets.only(
                      top: (width > 600 && height > 600) ? 50 : 30, left: 15, right: 15, bottom: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        project.title,
                        style: const TextStyle(
                            color: onPrimaryActive,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 20 * 0.15),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20,),
                      Flexible(
                        flex: 1,
                        child: Text(
                          project.description,
                          style: const TextStyle(
                              color: onPrimaryActive,
                              fontSize: 16,
                              letterSpacing: 1.5),
                          overflow: TextOverflow.fade,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          
                        }, 
                        child: const Text(
                          "More info",
                          style: TextStyle(
                            color: accentColor1
                          ),
                        )
                      ),
                    ],
                  ),
                )),
          ),
          Positioned(
              top: (width > 600 && height > 600) ? -40 : -25,
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.all(Radius.circular((width > 600 && height > 600) ? 40 :25)),
                child: CircleAvatar(
                  backgroundImage: AssetImage(project.icon),
                  radius: (width > 600 && height > 600) ? 40 : 25,
                ),
              )),
        ],
      ),
    );
  }
}
