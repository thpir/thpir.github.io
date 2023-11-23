import 'package:flutter/material.dart';
import 'package:portfolio/controllers/navigation_controller.dart';
import 'package:portfolio/global_variables.dart';
import 'package:portfolio/models/project.dart';
import 'package:provider/provider.dart';

class ProjectTile extends StatelessWidget {
  final double width;
  final double height;
  final Project project;
  const ProjectTile(
      {required this.width,
      required this.height,
      required this.project,
      super.key});

  Future<void> _dialogBuilder(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          icon: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                foregroundImage: AssetImage(
                  project.icon,
                ),
                backgroundColor: accentColor1,
                radius: 24,
              ),
            ],
          ),
          title: Text(
            project.title,
            style: TextStyle(
                color: onPrimaryActive,
                letterSpacing: getSubtitleFontSize(width) * 0.15),
            overflow: TextOverflow.ellipsis,
          ),
          content: SingleChildScrollView(
            child: Text(
              project.description,
              style: const TextStyle(
                  color: onPrimaryActive, fontSize: 16, letterSpacing: 1.2),
            ),
          ),
          backgroundColor: backgroundColor,
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text(
                'Close',
                style: TextStyle(color: accentColor1),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<NavigationController>(context);
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
                height: height / 1.5 > 600 ? 600 : height / 1.5,
                child: Padding(
                  padding: EdgeInsets.only(
                      top: (width > 1000 && height > 600) ? 50 : 30,
                      left: 15,
                      right: 15,
                      bottom: 30),
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
                      const SizedBox(
                        height: 20,
                      ),
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
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: ElevatedButton(
                          onPressed: () {
                            if (width <= 1000) {
                              _dialogBuilder(context);
                            }
                            controller.onProjectChanged(project.id);
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.resolveWith((_) {
                              return accentColor1;
                            }),
                          ),
                          child: const Text(
                            "More info",
                            style: TextStyle(color: onPrimaryActive),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
          ),
          Positioned(
              top: (width > 1000 && height > 600) ? -40 : -25,
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.all(
                    Radius.circular((width > 1000 && height > 600) ? 40 : 25)),
                child: CircleAvatar(
                  foregroundImage: AssetImage(project.icon),
                  backgroundColor: accentColor1,
                  radius: (width > 1000 && height > 600) ? 40 : 25,
                ),
              )),
        ],
      ),
    );
  }
}
