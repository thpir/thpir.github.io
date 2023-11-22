import 'package:flutter/material.dart';
import 'package:portfolio/screens/about_screen.dart';
import 'package:portfolio/screens/education_screen.dart';
import 'package:portfolio/screens/home_screen.dart';
import 'package:portfolio/screens/projects_screen.dart';
import 'package:portfolio/widgets/screen_animation.dart';

class NavigationController extends ChangeNotifier {
  int screen = 0;
  final List<Widget> screens = [
    const ScreenAnimation(screen: HomeScreen(),),
    const ScreenAnimation(screen: AboutScreen()),
    const ScreenAnimation(screen: EducationScreen()),
    const ScreenAnimation(screen: ProjectsScreen()),
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
