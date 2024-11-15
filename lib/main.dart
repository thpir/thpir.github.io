import 'package:flutter/material.dart';
import 'package:portfolio/controllers/navigation_controller.dart';
import 'package:portfolio/data/project_list.dart';
import 'package:portfolio/global_variables.dart';
import 'package:portfolio/screens/portfolio.dart';
import 'package:portfolio/screens/project_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Map<String, Widget Function(BuildContext)> getProjectRoutes() {
    final Map<String, Widget Function(BuildContext)> routes = {};
    for (final project in ProjectList.projectList) {
      routes[project.route] = (context) => ProjectScreen(project);
    }
    return routes;
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => NavigationController(),
      child: MaterialApp(
        title: 'Thijs Pirmez',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
          useMaterial3: true,
        ),
        home: const ResponsiveLayout(),
        routes: getProjectRoutes(),
      ),
    );
  }
}

class ResponsiveLayout extends StatefulWidget {
  const ResponsiveLayout({super.key});

  @override
  State<ResponsiveLayout> createState() => _ResponsiveLayoutState();
}

class _ResponsiveLayoutState extends State<ResponsiveLayout> {
  @override
  void dispose() {
    super.dispose();
    Provider.of<NavigationController>(context, listen: false)
        .disposeController();
  }

  @override
  Widget build(BuildContext context) {
    return const Portfolio();
  }
}
