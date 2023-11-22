import 'package:flutter/material.dart';
import 'package:portfolio/models/screen.dart';
import 'package:portfolio/screens/about_screen.dart';
import 'package:portfolio/screens/education_screen.dart';
import 'package:portfolio/screens/home_screen.dart';
import 'package:portfolio/screens/projects_screen.dart';

class NavigationController extends ChangeNotifier {
  int screen = 0;
  final List<Screen> screens = [
    Screen(name: "Home", icon: Icons.home, screen: const HomeScreen()),
    Screen(name: "About", icon: Icons.person, screen: const AboutScreen()),
    Screen(name: "Education", icon: Icons.school, screen: const EducationScreen()),
    Screen(name: "Projects", icon: Icons.workspace_premium, screen: const ProjectsScreen()),
  ];
  late PageController pageController;

  initController() {
    pageController = PageController();
  }

  disposeController() {
    pageController.dispose();
  }

  void navigationTapped(int screen) {
    pageController.jumpToPage(screen);
    this.screen = screen;
    notifyListeners();
  }

  void onPageChanged(int screen) {
    this.screen = screen;
    notifyListeners();
  }
}
