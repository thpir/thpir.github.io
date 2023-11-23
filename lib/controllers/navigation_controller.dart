import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/models/screen.dart';
import 'package:portfolio/screens/about_screen.dart';
import 'package:portfolio/screens/education_screen.dart';
import 'package:portfolio/screens/home_screen.dart';
import 'package:portfolio/screens/projects_screen.dart';
import 'package:portfolio/widgets/screen_animation.dart';

class NavigationController extends ChangeNotifier {
  int screen = 0;
  int activeProject = 0;
  final List<Screen> screens = [
    Screen(
        name: "Home",
        icon: Icons.home,
        screen: const ScreenAnimation(screen: HomeScreen())),
    Screen(
        name: "About",
        icon: Icons.person,
        screen: const ScreenAnimation(screen: AboutScreen())),
    Screen(
        name: "Education",
        icon: Icons.school,
        screen: const ScreenAnimation(screen: EducationScreen())),
    Screen(
        name: "Projects",
        icon: Icons.workspace_premium,
        screen: const ScreenAnimation(screen: ProjectsScreen())),
  ];
  late PageController pageController;
  late CarouselController carouselController;

  initController() {
    pageController = PageController();
    carouselController = CarouselController();
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

  void onProjectChanged(int project) {
    carouselController.jumpToPage(project);
    activeProject = project;
    notifyListeners();
  }
}
