import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/models/screen.dart';

class NavigationController extends ChangeNotifier {
  ScrollController scrollController = ScrollController();
  var homeKey = GlobalKey();
  var aboutKey = GlobalKey();
  var educationKey = GlobalKey();
  var projectsKey = GlobalKey();
  int screen = 0;
  int activeProject = 0;

  final List<Screen> screens = [
    Screen(
        name: "Home",
        icon: Icons.home,),
    Screen(
        name: "About",
        icon: Icons.person,),
    Screen(
        name: "Education",
        icon: Icons.school,),
    Screen(
        name: "Projects",
        icon: Icons.workspace_premium,),
  ];
  late PageController pageController;
  late CarouselController carouselController;

  initController() {
    pageController = PageController();
    carouselController = CarouselController();
  }

  disposeController() {
    pageController.dispose();
    scrollController.dispose();
  }

  void navigationTapped(int screen) {
    this.screen = screen;
    notifyListeners();
    if (screen == 3) {
      Scrollable.ensureVisible(
        projectsKey.currentContext!,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut
      );
    } else if (screen == 2) {
      Scrollable.ensureVisible(
        educationKey.currentContext!,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut
      );
    } else if (screen == 1) {
      Scrollable.ensureVisible(
        aboutKey.currentContext!,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut
      );
    } else {
      Scrollable.ensureVisible(
        homeKey.currentContext!,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut
      );
    }
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
